cask "stratoshark@dev" do
  arch arm: "Arm", intel: "Intel"

  version "0.9.1,129,f0e43e21168b"
  sha256 arm:   "8c69924f26011644fd2081a7ac5300b44358eb328b29fd449604d786511d9f10",
         intel: "7f347f43afd833fd923ddd954bcd805dfc3e5e2646df3524c196c9c083ce0249"

  url "https://www.wireshark.org/download/automated/osx/Stratoshark%20#{version.csv.first}-#{version.csv.second}-g#{version.csv.third}%20#{arch}%2064.dmg",
      verified: "wireshark.org/download/"
  name "Stratoshark"
  desc "System calls and log messages analyzer"
  homepage "https://stratoshark.org/"

  livecheck do
    url "https://www.wireshark.org/download/automated/osx/"
    regex(/href=.*?Stratoshark\s+v?(\d+(?:\.\d+)+(?:rc\d+)?)[._-](\d+)[._-]g(\h+)\s+#{arch}\s+64\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[0]},#{match[1]},#{match[2]}" }
    end
  end

  auto_updates true
  conflicts_with cask: "stratoshark"
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
