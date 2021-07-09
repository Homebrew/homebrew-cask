cask "kstars" do
  version "3.5.3"
  sha256 "e0d7ef260031d34fcb12a8917100ec977e9d6a92ee746144fd925eaaf61faee4"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  desc "Astronomy software"
  homepage "https://edu.kde.org/kstars/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/kstars-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "kstars.app"
end
