cask "kstars" do
  version "3.5.4"
  sha256 "16a94c06ea3e8d8fde692631c871f3e9ae6fe9f0c1156713ceed90814416d10f"

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
