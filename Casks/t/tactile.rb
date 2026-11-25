cask "tactile" do
  version "1.2.0"
  sha256 "da5679363f4f26c364751d62e15a1d39810cc361d6abce602a424d4bc161a77d"

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
