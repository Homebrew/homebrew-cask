cask "reflector" do
  version "3.2.1,3210"
  sha256 "ef56cde06b2aed87b164f2856f5190931d839e552d3b0755db11bddf5db86614"

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version.before_comma}.dmg"
  name "Reflector"
  desc "Wireless screen-mirroring application"
  homepage "https://www.airsquirrels.com/reflector/"

  livecheck do
    url "https://updates.airsquirrels.com/Reflector#{version.major}/Mac/Reflector#{version.major}.xml"
    strategy :sparkle
  end

  app "Reflector #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logs/Reflector*.log*",
    "~/Library/Caches/com.squirrels.Reflector-*",
    "~/Library/Preferences/com.squirrels.Reflector-*.plist",
  ]
end
