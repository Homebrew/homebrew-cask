cask "tmpdisk" do
  version "2.3.1"
  sha256 "a29db8c56be546e21edc9d6c4c733c4a82083aa9ac9802a579eb5fbf4d74417b"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  depends_on :macos

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
