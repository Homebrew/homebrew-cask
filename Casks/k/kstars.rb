cask "kstars" do
  arch arm: "arm64", intel: "x86_64"

  version "3.8.5"
  sha256 arm:   "3dfe1e6bc0d7a6ad4d7eaf423abfcc3e9b4e59bc187bdccb8a8c2533b7891f10",
         intel: "206ca157e504a83bb74008874c602596bf1ccc5a9ad11827f160866ad2c61ade"

  url "https://www.indilib.org/jdownloads/kstars/kstars-#{version}-#{arch}.dmg",
      user_agent: :browser
  name "KStars"
  desc "Astronomy software"
  homepage "https://kstars.kde.org/"

  livecheck do
    url "https://kstars.kde.org/download/macos/"
    regex(/href=.*?kstars[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
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
end
