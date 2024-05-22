cask "signal" do
  arch arm: "arm64", intel: "x64"

  version "7.10.0"
  sha256 arm:   "841fe347b5fcc9f0df1ce217b4dd5bd5472629f6836ab576f80453ba75813f83",
         intel: "11662570e43ec95aa99065694f63ef727f35ba05ccd24583dc2db8cb137a1cd4"

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
