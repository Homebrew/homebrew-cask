cask "electrocrud" do
  version "2.7.0"
  sha256 "ccf568bd1dba65539470c1578429fa21c94a2b4051e7bb277de3a9277b5fc5d4"

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/#{version}/ElectroCRUD-#{version}.dmg"
  appcast "https://github.com/garrylachman/ElectroCRUD/releases.atom"
  name "ElectroCRUD"
  homepage "https://github.com/garrylachman/ElectroCRUD"

  app "ElectroCRUD.app"
end
