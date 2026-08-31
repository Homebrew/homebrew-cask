cask "kstars" do
  version "3.8.4"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}.dmg",
      user_agent: :browser
  name "KStars"
  desc "Astronomy software"
  homepage "https://kstars.kde.org/"

  livecheck do
    url :homepage
    regex(/href=.*?kstars[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: :ventura

  app "kstars.app"

  uninstall launchctl: "org.freedesktop.dbus-kstars"

  zap trash: [
    "~/Library/Application Support/kstars",
    "~/Library/Caches/kstars",
    "~/Library/Preferences/kstars",
    "~/Library/Preferences/kstarsrc",
  ]

  caveats do
    requires_rosetta
  end
end
