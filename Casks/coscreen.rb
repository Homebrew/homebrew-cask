cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "4.0.67"
  sha256 arm:   "0cec123742472ed4010650a928b25ce4a05ac596cc8ffe231618dda144c197e1",
         intel: "b59f60e405b713f3fd81cdae656fed4d2f3d8c23e70555f4368e52d9e90a7aa2"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "https://update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://www.coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
