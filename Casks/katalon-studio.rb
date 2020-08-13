cask "katalon-studio" do
  version "7.6.2"
  sha256 "af896d49601774bea54f9ccbd6d6f96c59474185f2d702a74315298a14485cfd"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  appcast "https://github.com/katalon-studio/katalon-studio/releases.atom"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  app "Katalon Studio.app"
end
