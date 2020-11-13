cask "klokki" do
  version "1.3.3"
  sha256 "0eb51d1f5ba62da2d14bb67613f8454b4b592c1fa01e4e63e569756da1b57188"

  # storage.yandexcloud.net/klokki/ was verified as official when first introduced to the cask
  url "https://storage.yandexcloud.net/klokki/Klokki.dmg"
  appcast "https://storage.yandexcloud.net/klokki/appcast.xml"
  name "Klokki"
  desc "Automatic time-tracking solution or freelancers and makers"
  homepage "https://klokki.com/"

  depends_on macos: ">= :mojave"

  app "Klokki.app"
end
