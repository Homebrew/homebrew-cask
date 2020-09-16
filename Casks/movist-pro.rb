cask "movist-pro" do
  version "2.4.2"
  sha256 "b473fb397b0ac809c1cf1a7e991e4dbee2ff28e67b7518ae4e57b2bfb9a06a90"

  # s3.ap-northeast-2.amazonaws.com/update.cocoable.com was verified as official when first introduced to the cask
  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.app.zip"
  appcast "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  app "Movist Pro.app"
end
