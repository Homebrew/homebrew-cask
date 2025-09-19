cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "8.9.6"
  sha256 arm:   "ca91cff60c046d69bd40055de625f5bcdf5abbee1787f7b741b2cccee661a206",
         intel: "ecedd17094060f6a1c4fe0368c67f04942348aa5ae9b2f34b68e0d1fdf96091c"

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
