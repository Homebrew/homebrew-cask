cask "tmpdisk" do
  version "2.1.0"
  sha256 "509ad4ecd945dbf438ec29a2f1685a4974ade31f0786147cec424ee2d71e14de"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  depends_on macos: ">= :mojave"

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
