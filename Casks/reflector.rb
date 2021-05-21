cask "reflector" do
  version "4.0.1,222"
  sha256 "c035cb5e21317d7677fb6c482309735e2b2e5bbb0212add03a13010cb87e9ca6"

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version.before_comma}.dmg"
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
