cask "reflector" do
  version "4.1.4"
  sha256 "9f2857ea993d31a0b09a245244cd530c488e4edb30e7d7352be103ad7291ab1f"

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
