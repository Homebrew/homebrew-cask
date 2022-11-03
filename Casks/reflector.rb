cask "reflector" do
  version "4.1.0,259"
  sha256 "88c59210d290abd21393c9711590c3f5ca5c5aee38568bb8f75d30031dc90089"

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version.csv.first}.dmg"
  name "Reflector"
  desc "Wireless screen-mirroring application"
  homepage "https://www.airsquirrels.com/reflector/"

  livecheck do
    url "https://updates-prod.airsquirrels.com/Reflector#{version.major}/Mac/updateCheck/"
    strategy :sparkle
  end

  app "Reflector #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logs/Reflector*.log*",
    "~/Library/Caches/com.squirrels.Reflector-*",
    "~/Library/Preferences/com.squirrels.Reflector-*.plist",
  ]
end
