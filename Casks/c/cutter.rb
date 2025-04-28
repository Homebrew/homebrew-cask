cask "cutter" do
  arch arm: "arm64", intel: "x86_64"

  version "2.4.0"
  sha256 arm:   "85be3bf6b0b62199c2027fecf5deb5753001eda5551297741524e2d88ae1780b",
         intel: "03250a816652f98dba7f2d1dd751e74ba457ecbfb7c9b7a37034c50769d89bd6"

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
