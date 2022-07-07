cask "coscreen" do
  version "3.15.28"
  sha256 "ab37737b994c8f16345553cc24c1c02cb18245db0ad9793e922b0813be4f9ccf"

  url "https://update.coscreen.org/CoScreen-#{version}-stable.dmg",
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
