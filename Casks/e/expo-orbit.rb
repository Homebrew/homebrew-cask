cask "expo-orbit" do
  version "2.2.0"
  sha256 "210a3ea2a8a430437a6cf28402231e439b7b022e841b19448a42e3229b16ef2c"

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
