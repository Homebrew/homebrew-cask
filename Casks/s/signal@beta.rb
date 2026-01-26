cask "signal@beta" do
  arch arm: "arm64", intel: "x64"

  version "7.87.0-beta.2"
  sha256 arm:   "17e330eeaaa39e54ae9f4bb29996bda4789a256ed33b2c0c1f0c394b83135457",
         intel: "136eb4764835fa202698cd54a75265bbce81cf7d554829586d8a2b368fb71bd8"

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
