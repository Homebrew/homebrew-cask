cask "lyricsx" do
  version "1.6.3,2351"
  sha256 "7566809283aecdedd5275ded9180cedb467ce40c524b3297b411fe7abb479391"

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.csv.first}/LyricsX_#{version.csv.first}+#{version.csv.second}.zip"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/ddddxxx/LyricsX"

  livecheck do
    url :url
    regex(/^LyricsX[._-]v?(\d+(?:\.\d+)+)\+(\d+)\.zip$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  auto_updates true

  app "LyricsX.app"

  zap trash: [
    "~/ddddxxx.LyricsX",
    "~/Library/Application Scripts/3665V726AE.group.ddddxxx.LyricsX",
    "~/Library/Application Scripts/ddddxxx.LyricsX",
    "~/Library/Application Scripts/ddddxxx.LyricsXHelper",
    "~/Library/Containers/ddddxxx.LyricsX",
    "~/Library/Containers/ddddxxx.LyricsXHelper",
    "~/Library/Group Containers/3665V726AE.group.ddddxxx.LyricsX",
    "~/Library/Preferences/ddddxxx.LyricsX.plist",
  ]
end
