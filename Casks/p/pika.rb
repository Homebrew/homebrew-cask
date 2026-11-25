cask "pika" do
  version "2.0.3"
  sha256 "0c089146dd1c89a47dbb66dcca023b8af2427bf38ccd4f40c907214c037f8b3f"

  url "https://github.com/superhighfives/pika/releases/download/#{version}/Pika-#{version}.dmg"
  name "Pika"
  desc "Colour picker for colours onscreen"
  homepage "https://superhighfives.com/pika"

  livecheck do
    url "https://superhighfives.com/releases/pika"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "pika@beta"
  depends_on macos: :sonoma

  app "Pika.app"

  uninstall quit: "com.superhighfives.Pika"

  zap trash: [
    "~/Library/Application Scripts/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Application Support/Pika",
    "~/Library/Caches/com.superhighfives.Pika",
    "~/Library/Containers/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/com.superhighfives.Pika",
    "~/Library/Preferences/com.superhighfives.Pika.plist",
  ]
end
