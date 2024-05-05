cask "transfer" do
  version "2.2.2"
  sha256 "482445a33c7853a9803f666cdca18a3b17395ff3d5ba7010e1b6fd28d8bb57d4"

  url "https://www.intuitibits.com/downloads/Transfer_#{version}.dmg"
  name "transfer"
  desc "Standalone TFTP, FTP, and SFTP server"
  homepage "https://www.intuitibits.com/products/transfer/"

  livecheck do
    url "https://www.intuitibits.com/appcasts/transfercast.xml"
    strategy :sparkle, &:short_version
  end

  depends_on macos: ">= :mojave"

  app "Transfer.app"

  zap trash: [
    "~/Library/Application Support/Transfer",
    "~/Library/Caches/com.adriangranados.Transfer",
    "~/Library/Preferences/com.adriangranados.Transfer.plist",
    "~/Transfer",
  ]
end
