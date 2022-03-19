cask "muzzle" do
  version "1.9,426"
  sha256 "f1b4e3d75d8b8de5b6217594c627e58a35e43049267b4eb82716393adefc5fa5"

  url "https://muzzleapp.com/binaries/muzzle-#{version.csv.second}.zip"
  name "Muzzle"
  desc "Silence embarrassing notifications while screensharing"
  homepage "https://muzzleapp.com/"

  livecheck do
    url "https://muzzleapp.com/api/1/appcast.xml"
    strategy :sparkle
  end

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
