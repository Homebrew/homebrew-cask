cask "pym-player" do
  version "8.2.3,8C135"
  sha256 "b52abb17b2ccb98df986b6e820bbb5672691b5f802e0a166d28e705eac543d33"

  url "https://pym.uce.pl/download/pliki/PYMPlayer#{version.csv.second}.dmg"
  name "PYM Player"
  desc "Media player that automatically searches for subtitles"
  homepage "https://pym.uce.pl/pym-player/"

  livecheck do
    url "https://pym.uce.pl/downloads/"
    regex(/href=.*?PYMPlayer[._-]?v?([^.]+)\.dmg.*v[^\d]*(\d+(?:\.\d+)+)["< ]/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| "#{match[1]},#{match[0]}" }
    end
  end

  depends_on macos: ">= :big_sur"

  app "PYM Player.app"

  zap trash: [
    "~/Library/Application Support/pl.uce.pym.pymplayer#{version.major}",
    "~/Library/Caches/pl.uce.pym.pymplayer#{version.major}",
    "~/Library/HTTPStorages/pl.uce.pym.pymplayer#{version.major}",
    "~/Library/Preferences/pl.uce.pym.pymplayer#{version.major}.plist",
    "~/Library/Saved Application State/pl.uce.pym.pymplayer#{version.major}.savedState",
    "~/Library/WebKit/pl.uce.pym.pymplayer#{version.major}",
  ]
end
