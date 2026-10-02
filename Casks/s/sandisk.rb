cask "sandisk" do
  version "3.4.1"
  sha256 :no_check

  url "https://downloads.sandisk.com/downloads/sandiskapp-mac.dmg"
  name "sandisk"
  desc "Managing SanDisk external drives"
  homepage "https://www.sandisk.com/"

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "SANDISK.app"

  zap trash: [
        "~/Library/HTTPStorages/com.sandisk.smz2.mac",
        "~/Library/Application Support/com.sandisk.smz2.mac",
      ]
end