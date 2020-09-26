cask "publii" do
  version "0.37.0"
  sha256 "dbb9a018274c71ec0e455e405a4fcae1cdda57c823d04d884fab60fb7d0a0949"

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
