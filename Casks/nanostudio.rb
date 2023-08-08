cask "nanostudio" do
  version "1.45"
  sha256 "70407ffc54bf5ed2e3c8ec8f1a980739077199a828b8b9d28a2bae04c298856a"

  url "https://www.blipinteractive.co.uk/downloads/NanoStudio-#{version}.dmg.zip"
  name "NanoStudio"
  desc "Music production for 32 bit iOS devices"
  homepage "https://www.blipinteractive.co.uk/nanostudio1/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/NanoStudio[._-]v?(\d+(?:\.\d+)+)\.dmg\.zip}i)
  end

  app "NanoStudio.app"
  app "NanoStudio-Phone.app"
  app "NanoStudio-Tablet.app"
end
