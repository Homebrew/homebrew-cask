cask "termius@beta" do
  arch arm: "mac-beta-arm64", intel: "mac-beta"

  version "9.21.1"
  sha256 :no_check

  url "https://autoupdate.termius.com/#{arch}/Termius%20Beta.dmg"
  name "Termius Beta"
  desc "SSH client"
  homepage "https://www.termius.com/beta-program"

  livecheck do
    url "https://autoupdate.termius.com/mac-beta/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Termius Beta.app"

  uninstall delete: [
    "/Library/Preferences/com.termius-beta.mac.helper.plist",
    "/Library/Preferences/com.termius-beta.mac.plist",
  ]

  zap trash: [
    "~/.termius",
    "~/Library/Application Support/Termius Beta",
    "~/Library/Logs/Termius Beta",
    "~/Library/Saved Application State/com.termius-beta.mac.savedState",
  ]
end
