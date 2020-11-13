cask "muzzle" do
  version "1.6,401"
  sha256 "5509fb21513990d02a92b07e0ce6d283340e1e6bdf0176f880ae594152555645"

  url "https://muzzleapp.com/binaries/muzzle-#{version.after_comma}.zip"
  appcast "https://muzzleapp.com/api/1/appcast.xml"
  name "Muzzle"
  homepage "https://muzzleapp.com/"

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Muzzle.app"

  uninstall quit: "com.incident57.Muzzle"

  zap trash: [
    "~/Library/Caches/com.incident57.Muzzle",
    "~/Library/Cookies/com.incident57.Muzzle.binarycookies",
    "~/Library/Preferences/com.incident57.Muzzle.plist",
  ]
end
