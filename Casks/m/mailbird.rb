cask "mailbird" do
  arch arm: "arm64", intel: "x86_64"

  version "1.9.2"
  sha256 "1b77fcd1c04de9be968930e778c93de37557db3c53839bf2e0e95cb045a7a47e"

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
