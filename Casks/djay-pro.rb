cask "djay-pro" do
  version "2.2.9,202010171657"
  sha256 "a3c00db3030859bdb71c74368ac5adcc85d62a06790e31a635fa6c8f663775ee"

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast "https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast"
  name "Algoriddim djay Pro"
  desc "DJ software"
  homepage "https://www.algoriddim.com/djay-pro-mac"

  app "djay Pro #{version.major}.app"
end
