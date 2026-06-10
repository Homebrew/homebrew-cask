cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "8.14.0"
  sha256 arm:   "966fd851b70d07101ce49a4230f4f2794bf34fd6516d11612e00af1a43a16303",
         intel: "99384026ecbe1bfacbac3dae4906b93a5c5b1492b9c95c43377fdad3e3c474a3"

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
