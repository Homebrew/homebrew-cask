cask "favro" do
  version "1.0.49"
  sha256 "3429dd7bdfb5aa652e73d8a8caa365a4644f2db9b3eb13eebb6af5259aa03a7d"

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
