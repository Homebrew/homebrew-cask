cask "reflector" do
  version "4.0.0,1"
  sha256 "41fecbb26673dad787b32c4763f9d2049c61d571c49783cdc20e866d9a91f7d5"

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
