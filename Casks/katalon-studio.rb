cask "katalon-studio" do
  version "7.9.0"
  sha256 "90350e31e9fe636aaa4592e830cc22264bd1e76ff2058d657d3447813478a6bc"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
