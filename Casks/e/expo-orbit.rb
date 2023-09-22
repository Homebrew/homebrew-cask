cask "expo-orbit" do
  version "0.1.3"
  sha256 "c49a59a3a9651ea65b929b72f3b69b86f31950b79aa8dd70c3d8a7df343230fb"

  url "https://github.com/expo/orbit/releases/download/expo-orbit-v#{version}/expo-orbit.v#{version}.zip"
  name "Expo Orbit"
  desc "Launch builds and start simulators from your menu bar"
  homepage "https://github.com/expo/orbit/"

  depends_on macos: ">= :catalina"

  app "Expo Orbit.app"

  zap trash: [
    "~/Library/Application Support/dev.expo.orbit",
    "~/Library/Caches/dev.expo.orbit",
    "~/Library/HTTPStorages/dev.expo.orbit",
    "~/Library/Preferences/dev.expo.orbit.plist",
    "~/Library/WebKit/dev.expo.orbit",
  ]
end
