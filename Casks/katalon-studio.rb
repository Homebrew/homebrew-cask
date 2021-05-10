cask "katalon-studio" do
  version "8.0.0"
  sha256 "243ea87851fd7a99b92368a3cc0b3c49e8d9543679e35bc9cf4b3160becbc133"

  url "https://download.katalon.com/#{version}/Katalon%20Studio.dmg"
  name "Katalon Studio"
  homepage "https://www.katalon.com/download/"

  livecheck do
    url "https://github.com/katalon-studio/katalon-studio"
    strategy :git
    regex(/^v?(\d+(?:\.\d+)*)$/i)
  end

  app "Katalon Studio.app"
end
