cask "exodus" do
  version "21.4.23"
  sha256 "b6c863f0977764f4501cef5c44602948f851d459cc49a3bf3439d51ac5fb1e68"

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
