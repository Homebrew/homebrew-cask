cask "mountain" do
  version "1.6.6,54"
  sha256 :no_check

  url "https://appgineers.de/mountain/files/Mountain.zip"
  name "Mountain"
  homepage "https://appgineers.de/mountain/"

  livecheck do
    url "https://appgineers.de/mountain/files/mountaincast.xml"
    strategy :sparkle
  end

  app "Mountain.app"
end
