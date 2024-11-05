cask "expo-orbit" do
  version "1.2.0"
  sha256 "ea6a4f644feabbb4cc3963a333b3a1edc832538aa056c0cfe1f117eaa71811f4"

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
