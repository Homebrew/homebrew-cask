cask "proclaim" do
  version "3.1.0.0024,311.0.24"
  sha256 "89e6f3b21d33db97955317dadaca0a06c512fd380efb7d09afd9abf46786d7b1"

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
