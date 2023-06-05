cask "kstars" do
  version "3.6.5"
  sha256 "b72163c0b4af69257bede297e3b601d9a7591f82966f74bcc950aa133d2c2c0b"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      verified: "indilib.org/jdownloads/kstars/"
  name "KStars"
  desc "Astronomy software"
  homepage "https://kstars.kde.org/"

  livecheck do
    url :homepage
    regex(/href=.*?kstars[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "kstars.app"

  zap trash: [
    "~/Library/Application Support/kstars",
    "~/Library/Caches/kstars",
    "~/Library/Preferences/kstars",
    "~/Library/Preferences/kstarsrc",
  ]
end
