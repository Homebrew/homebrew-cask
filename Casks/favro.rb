cask "favro" do
  version "1.0.64"
  sha256 "d7904c2adf39a5f196f8069bd4fd4bb89266838e01deab62fd81bb560500e1b1"

  url "https://download.favro.com/FavroDesktop/macOS/x64/Favro-#{version}.dmg"
  name "Favro"
  desc "Collaborative planning app"
  homepage "https://www.favro.com/"

  livecheck do
    url "https://download.favro.com/FavroDesktop/macOS/x64/Latest.json"
    regex(/Favro[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Favro.app"
end
