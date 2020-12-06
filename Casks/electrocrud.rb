cask "electrocrud" do
  version "2.7.4"
  sha256 "bbea25e545ae3e477ccca0f75b707c45ef99c7a2ae3c15fb5681f7b8d005a0fd"

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/#{version}/ElectroCRUD-#{version}.dmg"
  appcast "https://github.com/garrylachman/ElectroCRUD/releases.atom"
  name "ElectroCRUD"
  desc "Database CRUD application"
  homepage "https://github.com/garrylachman/ElectroCRUD"

  app "ElectroCRUD.app"
end
