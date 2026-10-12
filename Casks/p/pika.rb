cask "pika" do
  version "2.0.0"
  sha256 "77e3fdfbd0b5b8f3505545a317a6942ede0231c911daf025ffc78407d47708c6"

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
    "~/Library/Containers/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Preferences/com.superhighfives.Pika.plist",
  ]
end
