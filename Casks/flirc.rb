cask "flirc" do
  version "3.26.0"
  sha256 "21732f74006a0701619572d9be25e2aec816498bc2bd7d86420dad73fcadb08f"

  url "https://flirc.tv/software/flirc-usb/GUI/release/mac/Flirc-#{version}.dmg"
  name "Flirc"
  homepage "https://flirc.tv/"

  livecheck do
    url "https://flirc.tv/software/release/gui/mac/appcast.xml"
    strategy :sparkle
  end

  app "Flirc.app"
end
