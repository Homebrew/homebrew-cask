cask "tmpdisk" do
  version "2.2.0"
  sha256 "b9eeeefac6377ae9d87f7ee93f94e90bcb8a65ca460bcbb8ecc96b54dd314217"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  depends_on macos: ">= :big_sur"

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
