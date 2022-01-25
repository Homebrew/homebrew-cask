cask "pym-player" do
  version "7.1.2,7B68"
  sha256 "8768c330555bb95b8a6f6a384a9ee724f7349aa955ccf4ff9ef6faee57fc03df"

  url "http://pym.uce.pl/download/pliki/PYMPlayer#{version.csv.second}.dmg"
  name "PYM Player"
  desc "Media player that automatically searches for subtitles"
  homepage "http://pym.uce.pl/pym-player/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/Wersja:\s*(\d+(?:\.\d+)*)\s*\((\d+B\d+)\)/i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  app "PYM Player.app"
end
