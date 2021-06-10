cask "favro" do
  version "1.0.59"
  sha256 "676d53cf53c1310addd268b4d80b143b533eec937043e03ab672e5ce0eb7d50e"

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  name "Favro"
  desc "Collaborative planning app"
  homepage "https://www.favro.com/"

  livecheck do
    url "https://download.favro.com/FavroDesktop/macOS/x64/Latest.json"
    strategy :page_match
    regex(/Favro-(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "Favro.app"
end
