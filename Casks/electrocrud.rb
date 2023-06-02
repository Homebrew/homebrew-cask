cask "electrocrud" do
  version "3.0.9"
  sha256 "7b6663f918001b659864298fcf6d7690720629aadc30f8eec2b865f0d1d5f23e"

  url "https://github.com/garrylachman/ElectroCRUD/releases/download/v#{version}/Electro.CRUD-darwin-arm64-#{version}.zip"
  name "ElectroCRUD"
  desc "Database CRUD application"
  homepage "https://github.com/garrylachman/ElectroCRUD"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Electro CRUD.app"

  zap trash: [
    "~/Library/Application Support/ElectroCRUD",
    "~/Library/Preferences/com.garrylachman.electrocrud.plist",
    "~/Library/Saved Application State/com.garrylachman.electrocrud.savedState",
  ]
end
