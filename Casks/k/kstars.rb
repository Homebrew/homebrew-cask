cask "kstars" do
  arch arm: "arm64", intel: "x86_64"

  version "3.8.5"
  sha256 arm:   "ea15f0e9d46ff7a261c1e8657930d8d35d9b6e3d2586015887ea2090414053a1",
         intel: "46494af5b4b41e54d5cb3571682c792cf8a7e6ba73ede084a3a33271b0c5bf72"

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
