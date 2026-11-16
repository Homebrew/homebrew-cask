cask "pika" do
  version "2.0.2"
  sha256 "03d1856ae0ce43659e23b60af74b1ce4c217ea03e24b2c3dbb0c569ed8ba9734"

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
