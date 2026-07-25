cask "stratoshark" do
  arch arm: "arm64", intel: "x86-64"

  version "0.10.2"
  sha256 "b77bdb3341c7c454ff907fd65aea9f40bc8eed9797b5aac00f4c0502c0beda1a"

  url "https://www.wireshark.org/download/osx/all-versions/Stratoshark%20#{version}.dmg",
      verified: "wireshark.org/download/osx/all-versions/"
  name "Stratoshark"
  desc "System calls and log messages analyzer"
  homepage "https://stratoshark.org/"

  livecheck do
    url "https://www.wireshark.org/update/0/Stratoshark/0.0.0/macOS/#{arch}/en-US/stable.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :ventura

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
