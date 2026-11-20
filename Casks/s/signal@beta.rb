cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "8.37.0-beta.1"
  sha256 arm:   "1e7644d6e04850c218b0399187a71d05b1ced1c973585bc6a39a308dd89e1c85",
         intel: "0726a712eb85aa7478ea4698d8249b47e738b847c915c49f91eb5bc83adc3f77"

  url "https://updates.signal.org/desktop/signal-desktop-beta-mac-#{arch}-#{version}.zip"
  name "Signal Beta"
  desc "Instant messaging application focusing on security"
  homepage "https://signal.org/"

  livecheck do
    url "https://updates.signal.org/desktop/beta-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :ventura

  app "Signal Beta.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.whispersystems.signal-desktop-beta.sfl*",
    "~/Library/Application Support/Signal Beta",
    "~/Library/Application Support/Signal",
    "~/Library/Preferences/org.whispersystems.signal-desktop-beta.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.helper.plist",
    "~/Library/Preferences/org.whispersystems.signal-desktop.plist",
    "~/Library/Saved Application State/org.whispersystems.signal-desktop.savedState",
  ]
end
