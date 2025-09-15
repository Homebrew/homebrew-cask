cask "transfer" do
  version "2.2.7"
  sha256 "42a7adb3bfe2fee7f094282895796f5c6b64ed894055d44a552738f591c3c22f"

  url "https://www.intuitibits.com/downloads/Transfer_#{version}.dmg"
  name "Transfer"
  desc "Standalone TFTP, FTP, and SFTP server"
  homepage "https://www.intuitibits.com/products/transfer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/transfercast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Transfer.app"

  zap trash: [
    "~/Library/Application Support/Transfer",
    "~/Library/Caches/com.adriangranados.Transfer",
    "~/Library/Caches/com.apple.helpd/Generated/com.intuitibits.transfer.help*",
    "~/Library/HTTPStorages/com.adriangranados.Transfer",
    "~/Library/HTTPStorages/com.adriangranados.Transfer.binarycookies",
    "~/Library/Preferences/com.adriangranados.Transfer.plist",
    "~/Library/Saved Application State/com.adriangranados.Transfer.savedState",
    "~/Library/WebKit/com.adriangranados.Transfer",
    "~/Transfer",
  ]
end
