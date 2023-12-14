cask "transfer" do
  version "2.2"
  sha256 "6472142b2536a7f7804df43d443f9f3cc64e602560f0f09be8e3b1b3b4e5b709"

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
