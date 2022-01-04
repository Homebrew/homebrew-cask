cask "pixelpeeper" do
  version "1.0.1"
  sha256 :no_check

  url "https://www.irradiatedsoftware.com/download/PixelPeeper.zip"
  name "PixelPeeper"
  desc "Execute an AppleScript when it sees that pixel change"
  homepage "https://www.irradiatedsoftware.com/labs/"

  depends_on macos: "<= :mojave"

  app "PixelPeeper.app"

  caveats do
    discontinued
  end
end
