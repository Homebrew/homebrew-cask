cask "kstars" do
  version "3.5.1"
  sha256 "c324d6e81e15f1480a8ab06d60cc4aa854366d4f044a064450796bc5fa9275c6"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  homepage "https://edu.kde.org/kstars/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/kstars-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "kstars.app"
end
