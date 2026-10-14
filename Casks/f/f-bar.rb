cask "f-bar" do
  version "6.3.0"
  sha256 "5624e76f42a395d091b0f8576747cb9a714cdaaf7e64cb3145a5a229183e2673"

  url "https://app.laravel-forge-menubar.com/storage/releases/F-Bar_#{version}.zip"
  name "F-Bar"
  desc "Manage Laravel Forge servers from the menubar"
  homepage "https://laravel-forge-menubar.com/"

  livecheck do
    url "https://app.laravel-forge-menubar.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "F-Bar.app"

  zap trash: [
    "~/Library/Application Support/F-Bar",
    "~/Library/Application Support/se.eastwest.F-Bar",
    "~/Library/Caches/se.eastwest.F-Bar",
    "~/Library/Preferences/se.eastwest.F-Bar.plist",
  ]
end
