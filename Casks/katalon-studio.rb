cask "katalon-studio" do
  version "7.7.0"
  sha256 "0fbe8bc5470aea6a81194eb28b9943016130ecba943a377da58ac45d8a72cd2e"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
