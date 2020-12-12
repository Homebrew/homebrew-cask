cask "movist-pro" do
  version "2.6.2"
  sha256 "85a4afac56f72a29cc9c4e9d7e5fa64680a63db32954be7e3097211a38e4ac66"

  # s3.ap-northeast-2.amazonaws.com/update.cocoable.com was verified as official when first introduced to the cask
  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.app.zip"
  appcast "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  app "Movist Pro.app"
end
