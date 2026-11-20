cask "oversight" do
  version "2.4.0"
  sha256 "2352214830d0c6c827b8e010d8dea59351dcba15019683a6e4686119174b99b9"

  url "https://github.com/objective-see/OverSight/releases/download/v#{version}/OverSight_#{version}.zip"
  name "OverSight"
  desc "Monitors computer mic and webcam"
  homepage "https://objective-see.org/products/oversight.html"

  depends_on macos: :monterey

  app "OverSight Installer.app/Contents/Resources/OverSight.app"

  uninstall quit:       "com.objective-see.oversight",
            login_item: "OverSight"

  zap trash: [
    "~/Library/Caches/com.objective-see.oversight",
    "~/Library/Caches/com.objective-see.OverSightHelper",
    "~/Library/Preferences/com.objective-see.oversight.plist",
    "~/Library/Preferences/com.objective-see.OverSightHelper.plist",
  ]
end
