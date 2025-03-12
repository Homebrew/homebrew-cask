cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.3.15"
  sha256 arm:   "380917c49c4c7abe30b3d4b7be49bc6009f1354840248ae32e2e1f9a5dbdcd36",
         intel: "eb38ae219b1b52202c961175dbce452a04bc705e8d5c4bd137504284b9d94c95"

  url "https://update.coscreen.org/CoScreen-#{version}-stable-#{arch}.dmg",
      verified: "update.coscreen.org/"
  name "CoScreen"
  desc "Collaboration tool with multi-user screen sharing"
  homepage "https://www.coscreen.co/"

  livecheck do
    url "https://update.coscreen.org/stable-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
