cask "katalon-studio" do
  version "8.1.0"
  sha256 "e9350e9a3872d9c9f905a78029c2e7cc3bdb33bb91d86c6beda6aaf4a25c7486"

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
