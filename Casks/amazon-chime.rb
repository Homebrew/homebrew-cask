cask "amazon-chime" do
  version "4.36.8260"
  sha256 "aa9cbb101988c51a5e5a7657ea076b9f89c813b848c6d41b28bfa55f90b7464c"

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
