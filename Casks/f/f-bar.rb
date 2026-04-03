cask "f-bar" do
  version "6.0.4"
  sha256 "ea0fd6f72e4e7a1aefaec28cd9454333ddf839c10d73511555550c94d5ef7d92"

  url "https://app.laravel-forge-menubar.com/storage/releases/F-Bar_#{version}.zip"
  name "F-Bar"
  desc "Manage Laravel Forge servers from the menubar"
  homepage "https://laravel-forge-menubar.com/"

  livecheck do
    url "https://app.laravel-forge-menubar.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "F-Bar.app"

  zap trash: [
    "~/Library/Application Support/F-Bar",
    "~/Library/Application Support/se.eastwest.F-Bar",
    "~/Library/Caches/se.eastwest.F-Bar",
    "~/Library/Preferences/se.eastwest.F-Bar.plist",
  ]
end
