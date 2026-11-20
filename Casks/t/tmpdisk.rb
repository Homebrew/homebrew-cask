cask "tmpdisk" do
  version "2.3.3"
  sha256 "4b211b1f8f89e375a1e2173829803a36d83c86537f0424827112ab68f1a6859f"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  depends_on :macos

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
