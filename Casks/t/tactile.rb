cask "tactile" do
  version "1.1.5"
  sha256 "13a4fa0d99fb61d76b5224a191a0bb39a92f04c55fd02d9aca0f5bd1a62b9936"

  url "https://github.com/Mason363/Tactile/releases/download/v#{version}/Tactile-#{version}.zip"
  name "Tactile"
  desc "System-wide haptic feedback for Force Touch trackpads"
  homepage "https://tactile.masn.studio/"

  livecheck do
    url "https://raw.githubusercontent.com/Mason363/Tactile/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Tactile.app"

  zap trash: [
    "~/Library/Application Support/Google/Chrome/NativeMessagingHosts/com.masonchen.tactile.bridge.json",
    "~/Library/Application Support/Tactile",
    "~/Library/Caches/com.masonchen.Tactile",
    "~/Library/HTTPStorages/com.masonchen.Tactile",
    "~/Library/Preferences/com.masonchen.Tactile.plist",
  ]
end
