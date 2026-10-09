cask "pika@beta" do
  version "2.0.0-beta6"
  sha256 "b78725002e2d2966f7ce7035e159ec90ccd2d30d1d39dacbaf17886ec42b2359"

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
    "~/Library/Containers/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Preferences/com.superhighfives.Pika.plist",
  ]
end
