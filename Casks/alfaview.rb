cask "alfaview" do
  version "8.9.1"
  sha256 "5155cfdd96dc2a1c9dc85bc04259c9bdee121305f67265a4aac622548bf65bf6"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
  name "Alfaview"
  homepage "https://alfaview.com/"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
