cask "expo-orbit" do
  version "1.0.2"
  sha256 "9502932d38f3c0490441c201259bcdc165b7472f219659c36ae0451c41cb08b0"

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
