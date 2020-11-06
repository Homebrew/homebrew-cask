cask "amazon-chime" do
  version "4.35.8222"
  sha256 "3d69d1dfeb0823fe286d50c7c60d0962e3a708b560823c494b4c7287cf79b279"

  url "https://clients.chime.aws/mac/releases/AmazonChime-OSX.release-#{version}.dmg"
  appcast "https://clients.chime.aws/mac/appcast"
  name "Amazon Chime"
  homepage "https://chime.aws/"

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Amazon Chime.app"

  zap trash: [
    "~/Library/Application Support/Amazon Chime",
    "~/Library/Application Support/com.amazon.Amazon-Chime",
    "~/Library/Caches/com.amazon.Amazon-Chime",
    "~/Library/Logs/Amazon Chime",
    "~/Library/Preferences/com.amazon.Amazon-Chime.plist",
    "~/Library/WebKit/com.amazon.Amazon-Chime",
  ]
end
