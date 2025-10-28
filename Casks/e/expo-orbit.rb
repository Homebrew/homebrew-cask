cask "expo-orbit" do
  version "2.1.0"
  sha256 "01d1928d0f9f520338a82a51c8c827650dc50051e06cdc21f580de5ed89a7613"

  url "https://github.com/expo/orbit/releases/download/expo-orbit-v#{version}/expo-orbit.v#{version}-macos.zip"
  name "Expo Orbit"
  desc "Launch builds and start simulators from your menu bar"
  homepage "https://github.com/expo/orbit/"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Expo Orbit.app"

  zap trash: [
    "~/Library/Application Support/dev.expo.orbit",
    "~/Library/Caches/dev.expo.orbit",
    "~/Library/HTTPStorages/dev.expo.orbit",
    "~/Library/Preferences/dev.expo.orbit.plist",
    "~/Library/WebKit/dev.expo.orbit",
  ]
end
