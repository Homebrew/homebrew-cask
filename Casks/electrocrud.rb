cask "electrocrud" do
  version "2.7.2"
  sha256 "b4435dd1c60dc7930bd68de1ce8c3cb5bc13ca11150a69d16352ce47c9c94c60"

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/#{version}/ElectroCRUD-#{version}.dmg"
  appcast "https://github.com/garrylachman/ElectroCRUD/releases.atom"
  name "ElectroCRUD"
  desc "Database CRUD application"
  homepage "https://github.com/garrylachman/ElectroCRUD"

  app "ElectroCRUD.app"
end
