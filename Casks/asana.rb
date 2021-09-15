cask "asana" do
  version "1.2.0"
  sha256 :no_check

  url "https://desktop-downloads.asana.com/darwin_x64/prod/latest/Asana.dmg"
  name "Asana"
  desc "Manage team projects and tasks"
  homepage "https://asana.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

  app "Asana.app"

  zap trash: [
    "~/Library/Application Support/Asana",
    "~/Library/Caches/com.electron.asana",
    "~/Library/Caches/com.electron.asana.ShipIt",
    "~/Library/Preferences/com.electron.asana.plist",
    "~/Library/Saved Application State/com.electron.asana.savedState",
  ]
end
