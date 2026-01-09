cask "segue" do
  version "1.0.1"
  sha256 "d25899378c881084dafd6d74353836251e2ab123ef71035155f96294b67da20b"

  url "https://segue.pylondev.com/releases/Segue-#{version}.dmg"
  name "Segue"
  desc "Focus overlay that dims everything except your active window"
  homepage "https://segue.pylondev.com/"

  livecheck do
    url "https://segue.pylondev.com/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sonoma"

  app "Segue.app"

  zap trash: [
    "~/Library/Application Support/Segue",
    "~/Library/Caches/com.segue.app",
    "~/Library/HTTPStorages/com.segue.app",
    "~/Library/Preferences/com.segue.app.plist",
    "~/Library/Saved Application State/com.segue.app.savedState",
  ]
end
