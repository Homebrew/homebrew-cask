cask "publii" do
  version "0.37.2"
  sha256 "42d75d54ec4f21f4f196241ea1dc0305ddcc1184a48ec2c1f9d1546834719e4e"

  url "https://cdn.getpublii.com/Publii-#{version}.dmg"
  appcast "https://getpublii.com/download/"
  name "Publii"
  homepage "https://getpublii.com/"

  app "Publii.app"

  zap trash: [
    "~/Documents/Publii",
    "~/Library/Application Support/Publii",
    "~/Library/Logs/Publii",
    "~/Library/Preferences/com.tidycustoms.publii.plist",
  ]
end
