cask "muzzle" do
  version "1.7,405"
  sha256 "d3f681c5a6e7e13a65dc4e15754d4ec0930d32cdb71637f13859c51a30b4deab"

  url "https://muzzleapp.com/binaries/muzzle-#{version.after_comma}.zip"
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
