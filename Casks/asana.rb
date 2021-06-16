cask "asana" do
  version "1.1.0"
  sha256 :no_check

  url "https://desktop-downloads.asana.com/darwin_x64/prod/latest/Asana.dmg"
  name "Asana"
  desc "Easiest way to manage team projects and tasks"
  homepage "https://asana.com/"

  auto_updates true

  app "Asana.app"

  zap trash: [
    "~/Library/Application Support/Asana/*",
    "~/Library/Caches/com.electron.asana*/*",
    "~/Library/Preferences/com.electron.asana.plist",
    "~/Library/Saved Application State/com.electron.asana.savedState/*",
  ]
end
