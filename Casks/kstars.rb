cask "kstars" do
  version "3.5.8"
  sha256 "877cf01526f51b8ef6a439dafe2cb7664a26dd97149221d1cde5b589cbf80c62"

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
