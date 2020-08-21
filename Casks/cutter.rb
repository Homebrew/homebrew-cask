cask "cutter" do
  version "1.11.1"
  sha256 "6f35931d52915ce093825ecad6288c1798ca99af7cffde1592a7e2119deb98b6"

  # github.com/radareorg/cutter/ was verified as official when first introduced to the cask
  url "https://github.com/radareorg/cutter/releases/download/v#{version}/Cutter-v#{version}-x64.macOS.dmg"
  appcast "https://github.com/radareorg/cutter/releases.atom"
  name "Cutter"
  desc "Reverse engineering platform powered by radare2"
  homepage "https://cutter.re/"

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
