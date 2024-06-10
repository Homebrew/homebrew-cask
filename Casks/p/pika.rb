cask "pika" do
  version "0.0.17"
  sha256 "01a7522b77d3a84ca34743cfecd476d2beafa4d77518ad21ffd8c9a44694cd52"

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
