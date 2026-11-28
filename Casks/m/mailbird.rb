cask "mailbird" do
  version "4.38.2"
  sha256 "05e4d48edad48b07523d9b54b9ab087fc017da2ad372599b542e40853da48992"

  url "https://download.getmailbird.com/installers/mailbird_next/macos/Mailbird-for-Mac-#{version}.dmg"
  name "Mailbird"
  desc "Email client"
  homepage "https://www.getmailbird.com/"

  livecheck do
    url "https://links.getmailbird.com/mailbird_mac_universal_installer"
    strategy :header_match
  end

  depends_on macos: :ventura

  app "Mailbird.app"

  zap trash: [
    "~/Library/Preferences/com.getmailbird.Mailbird Helper (Renderer).plist",
    "~/Library/Saved Application State/com.getmailbird.Mailbird.savedState",
  ]
end
