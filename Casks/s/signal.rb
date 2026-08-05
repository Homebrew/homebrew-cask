cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.22.0"
  sha256 arm:   "57da1cf2574619ea32d54441b5f54d145e2bf6fca8cc2afbf6feb4ffdb28319c",
         intel: "d9a255b9cfd03abc74cb1524693a3fcf330598463cf2945369f00d73909e16d9"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.zip"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
