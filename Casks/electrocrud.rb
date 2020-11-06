cask "electrocrud" do
  version "2.7.1"
  sha256 "8715c9acf7399c51f04e7345876074d269a828a32f2d07e6057a3d8d9a3c89a5"

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/#{version}/ElectroCRUD-#{version}.dmg"
  appcast "https://github.com/garrylachman/ElectroCRUD/releases.atom"
  name "ElectroCRUD"
  desc "Database CRUD application"
  homepage "https://github.com/garrylachman/ElectroCRUD"

  app "ElectroCRUD.app"
end
