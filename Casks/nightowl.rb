cask "nightowl" do
  version "0.4.4.6,37"
  sha256 :no_check

  url "https://nightowlapp.co/files"
  name "NightOwl"
  desc "Utility to toggle dark mode"
  homepage "https://nightowlapp.co/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  pkg "nightowl-#{version.csv.first}(release).pkg"

  uninstall pkgutil:   "com.mygreatcompany.pkg.NightOwl",
            launchctl: [
              "org.nightowl.autoupdater.com",
              "NightOwlUpdater",
            ]

  zap trash: [
    "~/Library/Caches/com.fuekiin.NightOwl",
    "~/Library/Preferences/com.fuekiin.NightOwl.plist",
  ]
end
