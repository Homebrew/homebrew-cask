cask "proclaim" do
  version "3.1.0.0029,311.0.29"
  sha256 "2d13d6bb988c4919a36b8248d343a81e711ed481e64011ab461215df574db3a0"

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
