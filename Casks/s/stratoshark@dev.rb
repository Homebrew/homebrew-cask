cask "stratoshark@dev" do
  version "0.9.4,27,1ec4709cab38"
  sha256 "353b4f7cc7bb22f2a7a57b259069fa1b37859f7f192b3c24654a24f685134801"

  url "https://www.wireshark.org/download/automated/osx/Stratoshark%20#{version.csv.first}-#{version.csv.second}-g#{version.csv.third}.dmg",
      verified: "wireshark.org/download/"
  name "Stratoshark"
  desc "System calls and log messages analyzer"
  homepage "https://stratoshark.org/"

  livecheck do
    url "https://www.wireshark.org/download/automated/osx/"
    regex(/href=.*?Stratoshark\s+v?(\d+(?:\.\d+)+(?:rc\d+)?)[._-](\d+)[._-]g(\h+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  auto_updates true
  conflicts_with cask: "stratoshark"
  depends_on macos: ">= :monterey"

  app "Stratoshark.app"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/dumpcap"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/extcap/sshdig"
  binary "#{appdir}/Stratoshark.app/Contents/MacOS/Stratoshark", target: "stratoshark"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/dumpcap.1"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/sshdig.1"
  manpage "#{appdir}/Stratoshark.app/Contents/Resources/share/man/man1/stratoshark.1"

  uninstall quit: "org.wireshark.Stratoshark"

  zap trash: [
    "~/.config/stratoshark",
    "~/Library/HTTPStorages/org.wireshark.Stratoshark",
    "~/Library/Preferences/org.wireshark.Stratoshark.plist",
  ]
end
