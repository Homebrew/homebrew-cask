cask "f-bar" do
  version "6.1.0"
  sha256 "da22b1a27a007a036ec075abb2399ec73dc905401e1339c87e3d1b4665a55d05"

  url "https://app.laravel-forge-menubar.com/storage/releases/F-Bar_#{version}.zip"
  name "F-Bar"
  desc "Manage Laravel Forge servers from the menubar"
  homepage "https://laravel-forge-menubar.com/"

  livecheck do
    url "https://app.laravel-forge-menubar.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :big_sur

  app "F-Bar.app"

  zap trash: [
    "~/Library/Application Support/F-Bar",
    "~/Library/Application Support/se.eastwest.F-Bar",
    "~/Library/Caches/se.eastwest.F-Bar",
    "~/Library/Preferences/se.eastwest.F-Bar.plist",
  ]
end
