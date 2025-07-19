cask "tmpdisk" do
  version "2.2.1"
  sha256 "012a2a583d684fe734c7ca98d0f15ad7a02f5bbe6642f4b9db20406971316be1"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  depends_on macos: ">= :big_sur"

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
