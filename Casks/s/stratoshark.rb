cask "stratoshark" do
  arch arm: "Arm", intel: "Intel"
  livecheck_arch = on_arch_conditional arm: "arm", intel: "x86-"

  version "0.9.0"
  sha256 arm:   "ac3f7b697c41c4305d60805ac6f97c7d1f67aff6aa6ba562245315f9411d48ff",
         intel: "cff7cb12394de096b9001915d791e98c9ce6f07127f74571249eb3e8fcee5ec3"

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
