cask "stratoshark" do
  arch arm: "arm64", intel: "x86-64"

  version "0.9.2"
  sha256 "137577601c51b55f553c5d90cd5e53bf285ee5a71deeb20742baa9348d46c09b"

  url "https://2.na.dl.wireshark.org/osx/all-versions/Stratoshark%20#{version}.dmg",
      verified: "wireshark.org/osx/all-versions/"
  name "Stratoshark"
  desc "System calls and log messages analyzer"
  homepage "https://stratoshark.org/"

  livecheck do
    url "https://www.wireshark.org/update/0/Stratoshark/0.0.0/macOS/#{arch}/en-US/stable.xml"
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
