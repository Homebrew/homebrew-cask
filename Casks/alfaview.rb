cask "alfaview" do
  version "8.8.3"
  sha256 "c87757b9030ca4a96bde98568e1936af70a431803adb2c7d119bf2e7ac5a50b2"

  url "https://assets.alfaview.com/stable/mac/alfaview-mac-production-#{version}.dmg"
  appcast "https://production-alfaview-assets.alfaview.com/stable/mac/version.info"
  name "Alfaview"
  homepage "https://alfaview.com/"

  app "alfaview.app"

  zap trash: "~/Library/Application Support/alfaview"
end
