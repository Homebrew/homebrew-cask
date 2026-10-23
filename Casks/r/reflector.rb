cask "reflector" do
  version "4.1.3"
  sha256 "8e8ab4a0d5c4d73ad144fb4c94e972a1748aad4587fd12849eca03ea64171e34"

  url "https://download.airsquirrels.com/Reflector#{version.major}/Mac/Reflector-#{version}.dmg"
  name "Reflector"
  desc "Wireless screen-mirroring application"
  homepage "https://www.airsquirrels.com/reflector/"

  livecheck do
    url "https://updates-prod.airsquirrels.com/Reflector#{version.major}/Mac/updateCheck/"
    strategy :sparkle, &:short_version
  end

  depends_on macos: :monterey

  app "Reflector #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Logs/Reflector*.log*",
    "~/Library/Application Support/Reflector #{version.major}",
    "~/Library/Caches/com.squirrels.Reflector-*",
    "~/Library/HTTPStorages/com.squirrels.Reflector-*",
    "~/Library/Preferences/com.squirrels.Reflector-*.plist",
  ]
end
