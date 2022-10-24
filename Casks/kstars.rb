cask "kstars" do
  version "3.6.1"
  sha256 "a79a6cc4d28d0f4edf959523c5f86b2ecc9bea867dd2922b17200cc3b29b9bdc"

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
