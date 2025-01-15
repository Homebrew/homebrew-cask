cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.38.0"
  sha256 arm:   "71720edd43319b75cd2a719991da8d16b1a6624f4178a232bdfa48c30853491c",
         intel: "62b3aab42e2cf42331a3317b19e043224f7702076ffaf8bee018114831e6b97a"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
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
