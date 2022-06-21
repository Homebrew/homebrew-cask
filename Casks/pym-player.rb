cask "pym-player" do
  version "8.0.0,8A178"
  sha256 "5eaf24b784d575062674ec4e968e20b016b44f9c5d43a4f378b65ca3b577561b"

  url "https://pym.uce.pl/download/pliki/PYMPlayer#{version.csv.second}.dmg"
  name "PYM Player"
  desc "Media player that automatically searches for subtitles"
  homepage "https://pym.uce.pl/pym-player/"

  livecheck do
    url "https://pym.uce.pl/downloads/"
    regex(/href=.*?PYMPlayer[._-]?v?([^.]+)\.dmg.*v[^\d]*(\d+(?:\.\d+)+)["< ]/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match.second},#{match.first}" }
    end
  end

  depends_on macos: ">= :big_sur"

  app "PYM Player.app"
end
