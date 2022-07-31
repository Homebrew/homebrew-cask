cask "kstars" do
  version "3.6.0"
  sha256 "2c4c72a39b6320c68341b42f0cce3a8cf28fde188e5184da40c5af127bd2be23"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  desc "Astronomy software"
  homepage "https://edu.kde.org/kstars/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/kstars-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on macos: ">= :high_sierra"

  app "kstars.app"
end
