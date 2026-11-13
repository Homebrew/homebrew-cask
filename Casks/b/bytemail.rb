cask "bytemail" do
  version "1.9.40"
  sha256 "e10a37d07887f3fc77e2e80cfbd32bcbb57e63f2ce7813f2b571ee81eb0069a8"

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
