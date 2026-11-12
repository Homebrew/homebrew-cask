cask "bytemail" do
  version "1.9.35"
  sha256 "d5a74b426e9a37c35c94bad09d55ea8b3ab995f463c5f30632f9e6800fe4592e"

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
