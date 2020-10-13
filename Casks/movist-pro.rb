cask "movist-pro" do
  version "2.4.3_1"
  sha256 "86d15e57da5384668c064f1513d1eff80a55b01d341846b9521d8bcd383cecaa"

  # s3.ap-northeast-2.amazonaws.com/update.cocoable.com was verified as official when first introduced to the cask
  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.app.zip"
  appcast "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  app "Movist Pro.app"
end
