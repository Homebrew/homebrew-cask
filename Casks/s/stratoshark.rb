cask "stratoshark" do
  arch arm: "Arm", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x86-"

  version "0.9.1"
  sha256 arm:   "6b8db90d758d305fbe267f7bb347bde7e97a6a6518f9c23cf9a3a9f143437418",
         intel: "dfc8049d1ceacd7ce9e562abd2df02a18354d4743d3421c31ca04339878b12ba"

  url "https://2.na.dl.wireshark.org/osx/all-versions/Stratoshark%20#{version}%20#{arch}%2064.dmg",
      verified: "wireshark.org/osx/all-versions/"
  name "Stratoshark"
  desc "System calls and log messages analyzer"
  homepage "https://stratoshark.org/"

  livecheck do
    url "https://www.wireshark.org/update/0/Stratoshark/0.0.0/macOS/#{livecheck_arch}64/en-US/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  conflicts_with cask: "stratoshark@dev"
  depends_on macos: ">= :big_sur"

  app "Stratoshark.app"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/extcap/falcodump"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/extcap/sshdig"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/Stratoshark", target: "stratoshark"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/falcodump.1"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/sshdig.1"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/stratoshark.1"

  uninstall quit: "org.wireshark.Stratoshark"

  zap trash: [
    "~/.config/stratoshark",
    "~/Library/HTTPStorages/org.wireshark.Stratoshark",
    "~/Library/Preferences/org.wireshark.Stratoshark.plist",
  ]
end
