cask "optimage" do
  version "3.3.1"
  sha256 "c836764790332f499c74896c78846abe70e0a22129028b9233bd08b5af30d25f"

  url "https://optimage.app/download/optimage-mac.zip"
  appcast "https://optimage.app/appcast.xml"
  name "Optimage"
  homepage "https://optimage.app/"

  auto_updates true

  app "Optimage.app"
  binary "#{appdir}/Optimage.app/Contents/MacOS/cli/optimage"
end
