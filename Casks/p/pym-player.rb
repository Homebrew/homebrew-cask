cask "pym-player" do
  version "8.2.1,8C103"
  sha256 "15d7983cbe75936ff94018f95e1fc6d22f09098146508cf6ceb0d2287d38570f"

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

  zap trash: [
    "~/Library/Application Support/pl.uce.pym.pymplayer#{version.major}",
    "~/Library/Caches/pl.uce.pym.pymplayer#{version.major}",
    "~/Library/HTTPStorages/pl.uce.pym.pymplayer#{version.major}",
    "~/Library/Preferences/pl.uce.pym.pymplayer#{version.major}.plist",
    "~/Library/Saved Application State/pl.uce.pym.pymplayer#{version.major}.savedState",
    "~/Library/WebKit/pl.uce.pym.pymplayer#{version.major}",
  ]
end
