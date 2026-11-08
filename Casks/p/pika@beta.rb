cask "pika@beta" do
  version "2.0.3-beta1"
  sha256 "4ef4d36910dab108249de37b622dfa57b92f7a8a0dd611facaf4adf93df9d692"

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
