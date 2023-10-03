cask "kstars" do
  version "3.6.7"
  sha256 "20ad11d4e5234495d135a01edcc3911ae31394d3e5a969df3b7a6a8fc6cae31f"

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
