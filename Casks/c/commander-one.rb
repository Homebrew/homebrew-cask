cask "commander-one" do
  version "3.9"
  sha256 :no_check

  url "https://cdn.electronic.us/products/commander/mac/download/commander.dmg",
      verified: "cdn.electronic.us/"
  name "Commander One"
  desc "Two-panel file manager"
  homepage "https://mac.eltima.com/file-manager.html"

  livecheck do
    url "https://cdn.electronic.us/products/commander/mac/update/settings.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :high_sierra"

  app "Commander One.app"

  zap trash: [
    "~/Library/Application Support/com.eltima.cmd1",
    "~/Library/Caches/com.eltima.cmd1",
    "~/Library/HTTPStorages/com.eltima.cmd1",
    "~/Library/Preferences/com.eltima.cmd1.plist",
    "~/Library/Saved Application State/com.eltima.cmd1.savedState",
  ]
end
