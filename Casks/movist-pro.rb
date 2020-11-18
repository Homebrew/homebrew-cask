cask "movist-pro" do
  version "2.6.1"
  sha256 "19d9d4239e384aaf3fe65eb546d75b98d21e4f1de79a1b6e286c115b9e3d5e15"

  # s3.ap-northeast-2.amazonaws.com/update.cocoable.com was verified as official when first introduced to the cask
  url "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/MovistPro_#{version}.app.zip"
  appcast "https://s3.ap-northeast-2.amazonaws.com/update.cocoable.com/appcast.xml"
  name "Movist Pro"
  desc "Media player"
  homepage "https://movistprime.com/"

  app "Movist Pro.app"
end
