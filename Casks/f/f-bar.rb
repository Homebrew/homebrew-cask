cask "f-bar" do
  version "6.2.0"
  sha256 "817d6720837f39f59cb60bbeb4d7a113b6fef8f52cd43c132549313b095b48bc"

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
