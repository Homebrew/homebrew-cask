cask "katalon-studio" do
  version "7.9.1"
  sha256 "2c484168cf97fc6b7a3e0698e0c09f55348fbc4aaa773b57b03ccd6f69858a09"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
