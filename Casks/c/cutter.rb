cask "cutter" do
  arch arm: "arm64", intel: "x86_64"

  version "2.5.0"
  sha256 arm:   "ec08477489cb7f769d4121e5084b09131b02b6a801ac7a2d5896a67e87193452",
         intel: "02a7f1c507239691b151e6cc41a5d33f89d672ec443f12890e31087ad37271a6"

  url "https://github.com/rizinorg/cutter/releases/download/v#{version}/Cutter-v#{version}-macOS-#{arch}.dmg",
      verified: "github.com/rizinorg/cutter/"
  name "Cutter"
  desc "Reverse engineering platform powered by Rizin"
  homepage "https://cutter.re/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :big_sur

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
