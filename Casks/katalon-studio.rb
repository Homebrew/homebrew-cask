cask "katalon-studio" do
  version "8.0.1"
  sha256 "4442d734730aa37f59a466e51bfc3ab805373a70220fcf18b690df9ce197a216"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  name "Katalon Studio"
  desc "Test automation solution"
  homepage "https://www.katalon.com/download/"

  livecheck do
    url "https://github.com/katalon-studio/katalon-studio"
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  app "Katalon Studio.app"
end
