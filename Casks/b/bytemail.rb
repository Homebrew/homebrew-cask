cask "bytemail" do
  version "1.9.45"
  sha256 "6d551dac28dd6e39186c9328dc17484dc3372eaea82d43636a121598a5983075"

  url "https://bytemailapp.com/downloads/ByteMail-#{version}.dmg"
  name "ByteMail"
  desc "Email client with an AI assistant"
  homepage "https://bytemailapp.com/"

  livecheck do
    url "https://bytemailapp.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "ByteMail.app"

  zap trash: [
    "~/Library/Application Scripts/674NP2TTQ2.co.bytemail.ByteMail",
    "~/Library/Application Scripts/co.bytemail.ByteMail.widgets",
    "~/Library/Application Support/ByteMail",
    "~/Library/Caches/ByteMail",
    "~/Library/Caches/co.bytemail.ByteMail",
    "~/Library/Containers/co.bytemail.ByteMail.widgets",
    "~/Library/Group Containers/674NP2TTQ2.co.bytemail.ByteMail",
    "~/Library/HTTPStorages/co.bytemail.ByteMail",
    "~/Library/HTTPStorages/co.bytemail.ByteMail.binarycookies",
    "~/Library/Logs/ByteMail",
    "~/Library/Preferences/co.bytemail.ByteMail.plist",
    "~/Library/WebKit/co.bytemail.ByteMail",
  ]
end
