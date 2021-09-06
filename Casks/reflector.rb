cask "reflector" do
  version "4.0.2,231"
  sha256 "f1dc94fbb7cee6985be77123f0ec237241dfd013fad88d5994d67018c4b49b14"

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
