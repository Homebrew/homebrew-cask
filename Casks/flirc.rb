cask "flirc" do
  version "3.26.2"
  sha256 "3e114ae783ae37f4343451b19426cabd380e9f843ed18d94f92d5fbb7dd7a63f"

  url "https://flirc.com/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  name "Flirc"
  desc "IR USB receiver configurator"
  homepage "https://flirc.com/"

  livecheck do
    url "https://flirc.com/software/release/gui/mac/appcast.xml"
    strategy :sparkle
  end

  app "Flirc.app"
end
