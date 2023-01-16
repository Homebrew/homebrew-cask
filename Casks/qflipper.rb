cask "qflipper" do
  version "1.2.2"
  sha256 "0273c91c7d1324d4fe112ec1c0aff34766afe5cca4c693ff2cd0ef8b77fb90e5"

  url "https://update.flipperzero.one/builds/qFlipper/#{version}/qFlipper-#{version}.dmg"
  name "qFlipper"
  desc "Updater for the Flipper Zero hardware"
  homepage "https://flipperzero.one/update"

  livecheck do
    url "https://update.flipperzero.one/builds/qFlipper/"
    regex(/href="v?(\d+(?:\.\d+)+)/i)
  end

  app "qFlipper.app"
end
