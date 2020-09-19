cask "djay-pro" do
  version "2.2.6,202009161159"
  sha256 "a26ac9809904b5c1f695c1b3b76b52d0399f4931c9a555cc7edf18746f87a27c"

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast "https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast"
  name "Algoriddim djay Pro"
  desc "DJ software"
  homepage "https://www.algoriddim.com/djay-pro-mac"

  app "djay Pro #{version.major}.app"
end
