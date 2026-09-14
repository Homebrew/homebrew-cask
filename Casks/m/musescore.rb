cask "musescore" do
  version "4.7.5.260831071,4.7.5"
  sha256 "5a8cc26994d3f346d3e7d88c6a1583959e990ee9346b00d7b1d3f9498de6473a"

  url "https://github.com/musescore/MuseScore/releases/download/v#{version.csv.second}/MuseScore-Studio-#{version.csv.first}.dmg"
  name "MuseScore"
  desc "Open-source music notation software"
  homepage "https://musescore.org/"

  livecheck do
    url :url
    regex(%r{/v?(\d+(?:\.\d+)+)/MuseScore[._-]Studio[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["browser_download_url"]&.match(regex)
        next if match.blank?

        "#{match[2]},#{match[1]}"
      end
    end
  end

  auto_updates true
  depends_on :macos

  app "MuseScore #{version.major}.app"
  command_wrapper "mscore",
                  executable: "#{appdir}/MuseScore #{version.major}.app/Contents/MacOS/mscore"

  uninstall quit: "org.musescore.MuseScore"

  zap trash: [
    "~/Library/Application Support/MuseScore",
    "~/Library/Caches/MuseScore",
    "~/Library/Caches/org.musescore.MuseScore",
    "~/Library/Preferences/org.musescore.MuseScore*.plist",
    "~/Library/Saved Application State/org.musescore.MuseScore.savedState",
  ]
end
