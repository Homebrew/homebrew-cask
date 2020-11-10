cask "alfaview" do
  version "8.11.2"
  sha256 "b51100f6d08caed7a8e542a7d6e8a18560975c4ec8ad874723004c257d8db297"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
  name "Alfaview"
  homepage "https://alfaview.com/"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
