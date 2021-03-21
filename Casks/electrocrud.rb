cask "electrocrud" do
  version "2.8.0"
  sha256 "b5f758c354b1c4e0d0d5434e8c6856629a85e1bf05121467e913ce3d8485be2e"

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/#{version}/ElectroCRUD-#{version}.dmg"
  name "ElectroCRUD"
  desc "Database CRUD application"
  homepage "https://github.com/garrylachman/ElectroCRUD"

  app "ElectroCRUD.app"
end
