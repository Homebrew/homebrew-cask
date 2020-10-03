cask "exodus" do
  version "20.10.2"
  sha256 "b27c6b3fda332b8074fdcdfec9ef4379b3eb3bc935ef903612ec1f57d77965c1"

  url "https://downloads.exodus.io/releases/exodus-macos-#{version}.dmg"
  appcast "https://www.exodus.io/releases/"
  name "Exodus"
  homepage "https://www.exodus.io/"

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
