cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.83.0-beta.1"
  sha256 arm:   "d3aa9a56bd5e38ca8d7a83c2edbb46c89cd7fe55407703b8175bd86494e07850",
         intel: "4484730ee4801f81668119ebc20ae20cd88805bd1fd6cbe862c719b8c396a99a"

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
