cask "katalon-studio" do
  version "7.8.5"
  sha256 "2c4915e0b09bac30be92baa4a4d8c8c17e9be2eb0df500f16385b16d5e21fbc5"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
