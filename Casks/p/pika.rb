cask "pika" do
  version "0.0.18"
  sha256 "bf4a41680b75dae005b687482f1a327e043d6d4600a5651dc51fafb4c429a369"

  url "https://github.com/superhighfives/pika/releases/download/#{version}/Pika-#{version}.dmg",
      verified: "github.com/superhighfives/pika/"
  name "Pika"
  desc "Colour picker for colours onscreen"
  homepage "https://superhighfives.com/pika"

  livecheck do
    url "https://superhighfives.com/releases/pika"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Pika.app"

  zap trash: [
    "~/Library/Application Scripts/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Containers/com.superhighfives.Pika-LaunchAtLoginHelper",
    "~/Library/Preferences/com.superhighfives.Pika.plist",
  ]
end
