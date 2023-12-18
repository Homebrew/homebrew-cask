cask "reflector" do
  version "4.1.1"
  sha256 "56744b2fff29d7de58808f0702db854c14a9314f6c775464e44e2fb4f5b0eb29"

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  name "Reflector"
  desc "Wireless screen-mirroring application"
  homepage "https://www.airsquirrels.com/reflector/"

  livecheck do
    url "https://updates-prod.airsquirrels.com/Reflector#{version.major}/Mac/updateCheck/"
    strategy :sparkle, &:short_version
  end

  app "Reflector #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logs/Reflector*.log*",
    "~/Library/Caches/com.squirrels.Reflector-*",
    "~/Library/Preferences/com.squirrels.Reflector-*.plist",
  ]
end
