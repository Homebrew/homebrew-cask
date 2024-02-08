cask "data-rescue" do
  version "6.0.8"
  sha256 "74526630976a9973905936766e6aff8d90f7ed9910014ba154849da7da6b3ad2"

  url "https://downloads.prosofteng.com/dr/Data_Rescue_#{version}.dmg"
  name "Data Rescue #{version.major}"
  desc "Data recovery software"
  homepage "https://www.prosofteng.com/mac-data-recovery"

  livecheck do
    url "https://www.prosofteng.com/downloads"
    regex(/>\s*Data\s+Rescue(?:\s+\d+)?\s+\(Mac\)\s*<.+?v?(\d+(?:\.\d+)+)/im)
  end

  depends_on macos: ">= :sierra"

  app "Data Rescue.app"

  uninstall quit:   "com.prosofteng.DataRescue",
            delete: "/Library/Application Support/Data Rescue"

  zap trash: [
    "~/Library/Application Support/Data Rescue",
    "~/Library/HTTPStorages/com.prosofteng.DataRescue",
    "~/Library/Preferences/com.prosofteng.Data Rescue.plist",
    "~/Library/Preferences/com.prosofteng.DataRescue.plist",
    "~/Library/Saved Application State/com.prosofteng.DataRescue.savedState",
  ]
end
