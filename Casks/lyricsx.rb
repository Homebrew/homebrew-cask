cask "lyricsx" do
  version "1.6.1,2341"
  sha256 "b9a4555f9cb070800eba87ae88df65140d72246f18d9f31517a85276d14308f6"

  url "https://github.com/ddddxxx/LyricsX/releases/download/v#{version.csv.first}/LyricsX_#{version.csv.first}+#{version.csv.second}.zip"
  name "LyricsX"
  desc "Lyrics for iTunes, Spotify, Vox and Audirvana Plus"
  homepage "https://github.com/ddddxxx/LyricsX"

  livecheck do
    url "https://github.com/ddddxxx/LyricsX/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/LyricsX_(\d+(?:\.\d+)*)\+(\d+)\.zip}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  auto_updates true

  app "LyricsX.app"

  zap trash: "~/ddddxxx.LyricsX"
end
