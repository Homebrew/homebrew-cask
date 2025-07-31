cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.64.0"
  sha256 arm:   "c1f6cf3b049d3211ffab03e8398173e95afb2fc96023d3c0ae4be510e742843a",
         intel: "a06f77569ef59b8389cc39057a1e73bd4a6184f02058cc19fcb894223a50d52e"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
