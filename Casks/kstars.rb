cask "kstars" do
  version "3.6.3"
  sha256 "f4d66bbdb09ebb673c9ffbba4940bbd82ee0eb299c86b5cfbd49049406591ace"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  desc "Astronomy software"
  homepage "https://edu.kde.org/kstars/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/kstars-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :catalina"

  app "kstars.app"
end
