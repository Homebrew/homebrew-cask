cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.54.0-beta.1"
  sha256 arm:   "2ee568dff4f2ef5eb08510f247912408e238c64ac3760da26b4d4563d2daa410",
         intel: "13be591cda4dc58d328180beffa48a544998d9d689d773ec1b9eb8ed9656db7a"

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
