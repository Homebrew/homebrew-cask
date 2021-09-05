cask "qflipper" do
  version "0.2.1"
  sha256 "cfd8248ef131acf637a30d146f075aa564f788bda7b47a17e4894a6c445385b7"

  url "https://update.flipperzero.one/builds/qFlipper/#{version}/qFlipper-#{version}.dmg"
  name "qFlipper"
  desc "Companion app for Flipper Zero devices"
  homepage "https://update.flipperzero.one/"

  livecheck do
    url "https://update.flipperzero.one/builds/qFlipper/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  app "qFlipper.app"

  zap trash: [
    "~/Library/Preferences/com.flipperdevices.qFlipper.plist",
    "~/Library/Preferences/com.flipperzero-one.qFlipper.plist",
    "~/Library/Saved Application State/test.qFlipper.savedState",
  ]
end
