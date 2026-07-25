cask "tmpdisk" do
  version "2.3.0"
  sha256 "b30c365aa5bd63efa7490078b807dd3274b0c28a89d04efe94b9e8def8ccf76f"

  url "https://github.com/imothee/tmpdisk/releases/download/v#{version}/TmpDisk.dmg"
  name "TmpDisk"
  desc "Ram disk management"
  homepage "https://github.com/imothee/tmpdisk"

  depends_on macos: :big_sur

  app "TmpDisk.app"

  zap trash: "~/Library/Preferences/com.imothee.TmpDisk.plist"
end
