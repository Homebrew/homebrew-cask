cask "proclaim" do
  version "3.1.0.0077,311.0.77"
  sha256 "80ac4f3478673ecdc1d003fe6f01c51027088a3800a48c7e371e57561a026cc3"

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
