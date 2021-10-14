cask "kstars" do
  version "3.5.5"
  sha256 "8cc6e4478f5d34f12997734d6731e5d343ec82025c432a9ad6007d900874f626"

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
