cask "katalon-studio" do
  version "8.0.5"
  sha256 "f162c91198c0031058b3f0c4c76496073971cbdab4bb6d44c7da1075e77d3abb"

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
