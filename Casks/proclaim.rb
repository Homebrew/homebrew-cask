cask "proclaim" do
  version "3.1.0.0060,311.0.60"
  sha256 "4847276e57b2cf5d46b888fd584f3e2c77450616f4b2a65ae5d018ea9870a487"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version.before_comma}/Proclaim.dmg",
      verified: "logoscdn.com/Proclaim/"
  name "Faithlife Proclaim"
  homepage "https://proclaim.faithlife.com/"

  livecheck do
    url "http://downloads.proclaimonline.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
