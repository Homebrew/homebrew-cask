cask "stratoshark" do
  arch arm: "arm64", intel: "x86-64"

  version "1.0.0rc2"
  sha256 "e2924188f315447cddc0af466f7d1bb84751af3f7883f66115a978ed791bf06e"

  url "https://www.wireshark.org/download/osx/all-versions/Stratoshark%20#{version}.dmg"
  name "Stratoshark"
  desc "System calls and log messages analyzer"
  homepage "https://stratoshark.org/"

  livecheck do
    url "https://www.wireshark.org/update/0/Stratoshark/0.0.0/macOS/#{arch}/en-US/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

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
