cask "mediathekview" do
  arch arm: "mac-as", intel: "mac"

  version "14.4.1"
  sha256 arm:   "92ce9cbca7176e025adb0b344ff265cfdacea9e125b54b47593554bd7d8361ab",
         intel: "28d321c4cb8adb82186979691b216c21e823ee2320aa594bbdd61210210791dc"

  url "https://download.mediathekview.de/stabil/MediathekView-#{version}-#{arch}.dmg"
  name "MediathekView"
  desc "Manages online multimedia libs of German, Austrian and Swiss public broadcasters"
  homepage "https://mediathekview.de/"

  livecheck do
    url "https://download.mediathekview.de/stabil/"
    regex(%r{href=.*?/MediathekView-(\d+(?:\.\d+)+)-#{arch}\.dmg}i)
  end

  app "MediathekView.app"

  zap trash: "~/Library/Caches/MediathekView"
end
