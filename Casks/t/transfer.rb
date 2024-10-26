cask "transfer" do
  version "2.2.3"
  sha256 "87a0200f64c1a0675db03824c23069980b8f6fb23b42d541f48bd181f2d05721"

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
