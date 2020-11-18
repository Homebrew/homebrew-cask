cask "quicken" do
  version "6.0.0,600.37019.100"
  sha256 "956b1bedd051a52045836ecaeb3b9cd16b1e99f533d080afc9dfe58e5fdb1f20"

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version.after_comma}/Quicken-#{version.after_comma}.zip"
  appcast "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml"
  name "Quicken"
  desc "Personal finance mananger"
  homepage "https://www.quicken.com/mac"

  depends_on macos: ">= :el_capitan"

  app "Quicken.app"

  zap trash: [
    "~/Library/Preferences/com.quicken.Quicken.plist",
    "~/Library/Application Support/Quicken",
  ]
end
