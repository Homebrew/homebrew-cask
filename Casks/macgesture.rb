cask "macgesture" do
  version "3.1.0"
  sha256 "9be2282365015bac05c5017f6c93225c9c451cef51bd1864d73b9970d559ad48"

  url "https://github.com/MacGesture/MacGesture/releases/download/#{version}/MacGesture-#{version}.zip"
  name "MacGesture"
  desc "Utility to set up global mouse gestures"
  homepage "https://github.com/MacGesture/MacGesture"

  auto_updates true

  app "MacGesture.app"

  zap trash: [
    "~/Library/Caches/com.codefalling.MacGesture",
    "~/Library/Preferences/com.codefalling.MacGesture.plist",
    "~/Library/WebKit/com.codefalling.MacGesture",
  ]
end
