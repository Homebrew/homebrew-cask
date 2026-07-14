cask "pika@beta" do
  version "1.8.0-beta4"
  sha256 "9ff5aa811b9f8296a3184bb79768615e6798194fe864e86db68c942405f3f5f6"

  url "https://github.com/superhighfives/pika/releases/download/#{version}/Pika-#{version}.dmg",
      verified: "github.com/superhighfives/pika/"
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
