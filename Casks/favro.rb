cask "favro" do
  version "1.0.49"
  sha256 "3429dd7bdfb5aa652e73d8a8caa365a4644f2db9b3eb13eebb6af5259aa03a7d"

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  appcast "https://download.favro.com/FavroDesktop/macOS/x64/Latest.json"
  name "Favro"
  homepage "https://www.favro.com/"

  app "Favro.app"
end
