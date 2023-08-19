cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "5.3.16"
  sha256 arm:   "6d834b1dced6e1149115988b0c5ac81106206d60f00f60ec365dc8a86b908139",
         intel: "5e28686dec559ab7d2b042d5f4ab88121a2320c0872eb7687a4f4113fb1cada4"

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
