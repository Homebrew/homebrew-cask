cask "djay-pro" do
  version "2.2.7,202010071410"
  sha256 "c40a206f07b1e0228b59473f987bc7854f02b2c9bb3e13ffaf7a9e524c99f0c1"

  url "https://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast "https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast"
  name "Algoriddim djay Pro"
  desc "DJ software"
  homepage "https://www.algoriddim.com/djay-pro-mac"

  app "djay Pro #{version.major}.app"
end
