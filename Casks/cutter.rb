cask "cutter" do
  version "2.0.1"
  sha256 "f797ab73079e5f261a7137c8ac78989d9f45326255bdde0eb2bfab7e544c8b58"

  url "https://github.com/rizinorg/cutter/releases/download/v#{version}/Cutter-v#{version}-Darwin.dmg",
      verified: "github.com/rizinorg/cutter/"
  name "Cutter"
  desc "Reverse engineering platform powered by radare2"
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
    IO.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/Cutter.app/Contents/MacOS/Cutter' "$@"
    EOS
  end

  zap trash: [
    "~/.config/RadareOrg",
    "~/.local/share/radare2",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.radare.cutter.sfl*",
    "~/Library/Application Support/RadareOrg",
    "~/Library/Preferences/org.radare.cutter.plist",
    "~/Library/Saved Application State/org.radare.cutter.savedState",
  ]
end
