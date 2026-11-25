cask "pika@beta" do
  version "2.1.0-beta1"
  sha256 "0815a523e8278c020d053def7c7c164a5c1c3ff53e2661defb6097c3a1a9a531"

  url "https://github.com/superhighfives/pika/releases/download/#{version}/Pika-#{version}.dmg"
  name "Pika"
  desc "Colour picker for colours onscreen"
  homepage "https://superhighfives.com/pika"

  livecheck do
    url "https://superhighfives.com/releases/pika/betas"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  conflicts_with cask: "pika"
  depends_on macos: :sonoma

  app "Pika.app"

  zap trash: [
    "~/Library/Application Scripts/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Application Support/Pika",
    "~/Library/Caches/com.superhighfives.Pika",
    "~/Library/Containers/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/HTTPStorages/com.superhighfives.Pika",
    "~/Library/Preferences/com.superhighfives.Pika.plist",
  ]
end
