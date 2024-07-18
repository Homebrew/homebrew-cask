cask "coscreen" do
  arch arm: "arm64", intel: "x64"

  version "7.10.41"
  sha256 arm:   "8893af1aa40ddd2173d760bce9f5a973fd4ffe13a488a1a608498c477cbde92e",
         intel: "f16b59197686235a740cbb3f80ee80811c136afd56e99326715b52c74e68aad5"

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
  depends_on macos: ">= :catalina"

  app "CoScreen.app"

  zap trash: [
    "~/Library/Application Support/CoScreen",
    "~/Library/Logs/CoScreen",
    "~/Library/Preferences/org.coscreen.CoScreen.plist",
    "~/Library/Saved Application State/org.coscreen.CoScreen.savedState",
  ]
end
