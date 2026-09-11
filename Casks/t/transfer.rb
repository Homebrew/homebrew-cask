cask "transfer" do
  version "2.4.4"
  sha256 "ec2a7e2abb38ab1459df4e956c9aa39b7abe68e66ef56c743f09a2c67870bc98"

  url "https://www.intuitibits.com/downloads/Transfer_#{version}.dmg"
  name "Transfer"
  desc "Standalone TFTP, FTP, and SFTP server"
  homepage "https://www.intuitibits.com/products/transfer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/transfercast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

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
