cask "bukku" do
  version "1.0.0"
  sha256 "15e7979f7d2a4aadc719ddd865ee919770b4eb50af8e9b7867629ea9f586096b"

  url "https://aleksgorbenko.dev/apps/bukku/download/v#{version}/Bukku-#{version}.dmg"
  name "Bukku"
  desc "Launcher for browser tabs, bookmarks and history"
  homepage "https://aleksgorbenko.dev/apps/bukku/"

  livecheck do
    url "https://aleksgorbenko.dev/apps/bukku/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Bukku.app"

  zap trash: [
    "~/Library/Application Support/dev.aleksgorbenko.Bukku",
    "~/Library/Caches/dev.aleksgorbenko.Bukku",
    "~/Library/HTTPStorages/dev.aleksgorbenko.Bukku",
    "~/Library/Preferences/dev.aleksgorbenko.Bukku.plist",
  ]
end
