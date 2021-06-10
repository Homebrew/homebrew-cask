cask "f-bar" do
  if MacOS.version <= :el_capitan
    version "3.1.1"
    sha256 "dd2cbcc8bfb9244cf952d29354f6cd7f442472ca4ed8a11063c006c9f83b07af"
  else
    version "5.0.3"
    sha256 "ce4acf52e76c64e7a4a2d1695054ac677e722789302c634999780f900b11a3d5"
  end

  url "https://apps.eastwest.se/fbar/updates/F-Bar_#{version}.zip",
      verified:   "apps.eastwest.se/",
      user_agent: :fake
  name "F-Bar"
  desc "Manage Laravel Forge servers from the menubar"
  homepage "https://laravel-forge-menubar.com/"

  livecheck do
    url "https://apps.eastwest.se/fbar/updates/FBarAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "F-Bar.app"

  zap trash: [
    "~/Library/Application Support/F-Bar",
    "~/Library/Application Support/se.eastwest.F-Bar",
    "~/Library/Caches/se.eastwest.F-Bar",
    "~/Library/Preferences/se.eastwest.F-Bar.plist",
  ]
end
