cask "exodus" do
  version "21.5.7"
  sha256 "6818408419634f18d9b0104de83e329ddb2fe42b329f1c1e560d1764bda905cd"

  url "https://downloads.exodus.com/releases/exodus-macos-#{version}.dmg"
  name "Exodus"
  desc "Desktop wallet for cryptocurrency assets"
  homepage "https://www.exodus.com/"

  livecheck do
    url "https://www.exodus.com/releases/"
    strategy :page_match
    regex(/new\s*in.*?(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "Exodus.app"

  zap trash: [
    "~/Library/Application Support/Exodus",
    "~/Library/Preferences/com.electron.exodus.helper.plist",
    "~/Library/Preferences/com.electron.exodus.plist",
    "~/Library/Saved Application State/com.electron.exodus.savedState",
  ]
end
