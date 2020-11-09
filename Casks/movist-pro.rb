cask "movist-pro" do
  version "2.4.4"
  sha256 "7ecd3b3165599523b0b9ba1f4b43ef59e7c06f69c4511729e447b69d9c08114e"

  # s3.ap-northeast-2.amazonaws.com/update.cocoable.com was verified as official when first introduced to the cask
  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.app.zip"
  appcast "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  app "Movist Pro.app"
end
