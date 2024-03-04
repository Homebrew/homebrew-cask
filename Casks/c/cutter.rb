cask "cutter" do
  arch arm: "arm64", intel: "x86_64"

  version "2.3.4"
  sha256 arm:   "d14ab3a27f76dfd16fed8f9d6e2e4f354dff64748a4cb7b87693ea8dc63e3470",
         intel: "67100b5fadc1c27352620bc2934d44c0e23e730bc6b1ef91a10afad49b04c464"

  url "https://github.com/rizinorg/cutter/releases/download/v#{version}/Cutter-v#{version}-macOS-#{arch}.dmg",
      verified: "github.com/rizinorg/cutter/"
  name "Cutter"
  desc "Reverse engineering platform powered by Rizin"
  homepage "https://cutter.re/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "Cutter.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/cutter.wrapper.sh"
  binary shimscript, target: "cutter"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Cutter.app/Contents/MacOS/Cutter' "$@"
    EOS
  end

  zap trash: [
    "~/.config/rizin",
    "~/.local/share/rizin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/re.rizin.cutter.sfl*",
    "~/Library/Application Support/rizin",
    "~/Library/Preferences/re.rizin.cutter.plist",
    "~/Library/Saved Application State/re.rizin.cutter.savedState",
  ]
end
