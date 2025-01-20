cask "stratoshark" do
  arch arm: "Arm", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x86-"

  version "0.9.0rc1"
  sha256 arm:   "9f1a8c356b5b4101db90f392929650c86cb51adf2549e7cd13098172ef6bee24",
         intel: "8f8c0185c0cb5e454393de1fc40e44b90c1339719fe42f535acff9658d2053e5"

  url "https://2.na.dl.wireshark.org/osx/all-versions/Stratoshark%20#{version}%20#{arch}%2064.dmg"
  name "Stratoshark"
  desc "System calls and log messages analyzer"
  homepage "https://wiki.wireshark.org/Stratoshark"

  livecheck do
    url "https://www.wireshark.org/update/0/Stratoshark/0.0.0/macOS/#{livecheck_arch}64/en-US/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Stratoshark.app"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/extcap/falcodump"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/extcap/sshdig"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/falcodump.1"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/sshdig.1"

  uninstall quit: "org.wireshark.Stratoshark"

  zap trash: [
    "~/.config/stratoshark",
    "~/Library/HTTPStorages/org.wireshark.Stratoshark",
    "~/Library/Preferences/org.wireshark.Stratoshark.plist",
  ]
end
