cask "pym-player" do
  version "8.0.0,8A178"
  sha256 "5eaf24b784d575062674ec4e968e20b016b44f9c5d43a4f378b65ca3b577561b"

  url "https://pym.uce.pl/download/pliki/PYMPlayer#{version.csv.second}.dmg"
  name "PYM Player"
  desc "Media player that automatically searches for subtitles"
  homepage "https://pym.uce.pl/pym-player/"

  livecheck do
    url :homepage
    strategy :page_match do |page|
      match = page.match(/Wersja:.*?\s*(\d+(?:\.\d+)*).*?\((\d+)\)/i)
      next if match.blank?

      "#{match[1]},8A#{match[2]}"
    end
  end

  depends_on macos: ">= :big_sur"

  app "PYM Player.app"
end
