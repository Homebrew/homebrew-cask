cask "katalon-studio" do
  version "7.7.1"
  sha256 "386f736247effbc5c001d8c3a264ce213d3f7eb201f21608376d5c0bda1534a2"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
