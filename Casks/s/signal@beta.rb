cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.2.0-beta.1"
  sha256 arm:   "6107c8cf4c6ac642b20a9a62b6cb857e5afbc7f89936e2c60f66377a3961c0ea",
         intel: "f7f31de1c3c030349af6e019597381bb262444ad16f3ab371ff7b013fc6787b5"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
