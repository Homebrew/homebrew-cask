cask "klokki" do
  version "1.3.3,62"
  sha256 :no_check

  url "https://storage.yandexcloud.net/klokki/Klokki.dmg",
      verified: "storage.yandexcloud.net/klokki/"
  appcast "https://storage.yandexcloud.net/klokki/appcast.xml"
  name "Klokki"
  desc "Automatic time-tracking solution or freelancers and makers"
  homepage "https://klokki.com/"

  depends_on macos: ">= :mojave"

  app "Klokki.app"
end
