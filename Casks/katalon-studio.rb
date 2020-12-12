cask "katalon-studio" do
  version "7.8.1"
  sha256 "cb6bfdab8cd6a8b4a17292f6f3d03db8a5e94cd6bf80e66a6d47d57b90c46308"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
