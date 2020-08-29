cask "katalon-studio" do
  version "7.6.6"
  sha256 "c98118026fc202ba1a67a3d16d1d498663e52496772f73f12663c9f1688545d9"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
