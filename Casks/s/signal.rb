cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.28.0"
  sha256 arm:   "a94b92ecb0757f760f1a26db99ecc05a20464a36e6c34afbd340577cc4278760",
         intel: "f726a0204a281adec9886dd61d17911e04098d4039e13e6bc89fd4c5eb48f9af"

  url "https://updates.signal.org/desktop/signal-desktop-mac-#{arch}-#{version}.dmg"
  name "Signal"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Signal.app"

  zap trash: [
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
