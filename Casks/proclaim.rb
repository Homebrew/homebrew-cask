cask "proclaim" do
  version "3.1.0.0084,311.0.84"
  sha256 "4dc0bc796a89732ebfa0f4566d892bbb2c62aa3076ddaacbf0e646d412165ded"

  url "https://downloads.logoscdn.com/Proclaim/Installer/#{version.before_comma}/Proclaim.dmg",
      verified: "logoscdn.com/Proclaim/"
  name "Faithlife Proclaim"
  desc "Church presentation software"
  homepage "https://faithlife.com/products/proclaim"

  livecheck do
    url "http://downloads.proclaimonline.com/mac/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "Proclaim.app"
end
