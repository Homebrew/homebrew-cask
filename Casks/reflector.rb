cask "reflector" do
  version "4.0.3,249"
  sha256 "bf140df6a49c2be57d0cf4cad7b4180f73585959b04e3469999b7f4cefb99b08"

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
