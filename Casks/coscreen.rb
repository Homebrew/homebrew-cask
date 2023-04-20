cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "5.1.39"
  sha256 arm:   "ef33503f9d97ddae9e404b800f0602f636747d0968929072ee2eb95f9a329aea",
         intel: "289f3c53319a69b7d3b75da14180f29fafef67804e8c081d89b43d423c195ea1"

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
  depends_on macos: ">= :mojave"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
