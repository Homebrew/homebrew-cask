cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "5.3.15"
  sha256 arm:   "9923aa799c057245b936b95db396a51984f8f99c5a019fe9a627b7b1c5f69d70",
         intel: "6169a6f589906ac084f8cf47850f1707fa5107b025da7bb5048b2eaac64e6426"

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
