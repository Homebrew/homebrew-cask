cask "data-rescue" do
  version "6.0.9"
  sha256 "8968377be610cd034aab69f6fa6267fb3524dd772d9ceb0cca138b4a668ced17"

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

  caveats do
    requires_rosetta
  end
end
