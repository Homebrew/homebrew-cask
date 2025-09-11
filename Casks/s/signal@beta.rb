cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.71.0-beta.1"
  sha256 arm:   "9958a0a6ce714d78bb4f20fe7c77a1b842ab944e24b3d8025daf4cf5b4fef182",
         intel: "58927afac95f1c03b0ee49c464ed8fc18b6e557b07781d1c4c2d258ca2bc6eb0"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
