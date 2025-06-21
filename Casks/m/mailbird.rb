cask "mailbird" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.0"
  sha256 "274e6089584b9861b2e7fecaba76a4819dea98c05df11a8901b664f73ec2e932"

  url "https://download.getmailbird.com/installers/mailbird_next/macos/Mailbird-for-Mac-#{version}.dmg"
  name "Mailbird"
  desc "Email client"
  homepage "https://www.getmailbird.com/"

  livecheck do
    url "https://links.getmailbird.com/mailbird_mac_#{arch}_installer"
    strategy :header_match
  end

  depends_on macos: ">= :ventura"

  app "Mailbird.app"

  zap trash: [
    "~/Library/Preferences/com.getmailbird.Mailbird Helper (Renderer).plist",
    "~/Library/Saved Application State/com.getmailbird.Mailbird.savedState",
  ]
end
