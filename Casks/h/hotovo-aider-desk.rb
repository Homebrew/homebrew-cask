cask "hotovo-aider-desk" do
  arch arm: "arm64", intel: "x64"

  version "0.50.1"
  sha256 arm:   "ac98d44a2c52c61841528f711c2b615ac29cbf50982d82a0971b5bb349c40d0e",
         intel: "9ecb9c595e67dadde3f136d630d2c2e343623c870486573ccfc018c343d96582"

  url "https://github.com/hotovo/aider-desk/releases/download/v#{version}/aider-desk-#{version}-macos-#{arch}.dmg"
  name "AiderDesk"
  desc "Desktop GUI for Aider AI pair programming"
  homepage "https://github.com/hotovo/aider-desk"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "aider-desk.app"

  zap trash: [
    "~/Library/Application Support/aider-desk",
    "~/Library/Logs/aider-desk",
    "~/Library/Preferences/com.hotovo.aider-desk.plist",
    "~/Library/Saved Application State/com.hotovo.aider-desk.savedState",
  ]
end
