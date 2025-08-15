cask "transfer" do
  version "2.2.6"
  sha256 "9bbf3006c0e6de1de71dca930ce372bb3a05e6654ea4a1e648646feccea63079"

  url "https://www.intuitibits.com/downloads/Transfer_#{version}.dmg"
  name "Transfer"
  desc "Standalone TFTP, FTP, and SFTP server"
  homepage "https://www.intuitibits.com/products/transfer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/transfercast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
