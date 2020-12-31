cask "optimage" do
  version "3.3.1,185"
  sha256 :no_check

  url "https://optimage.app/download/optimage-mac.zip"
  name "Optimage"
  homepage "https://optimage.app/"

  livecheck do
    url "https://optimage.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

  app "Optimage.app"
  binary "#{appdir}/Optimage.app/Contents/MacOS/cli/optimage"
end
