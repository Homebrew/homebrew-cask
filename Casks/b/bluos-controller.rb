cask "bluos-controller" do
  version "4.18.0"
  sha256 "d48f1831babc481e04c121dd076df4a39ee0a3b459760fa566a9b57916b77878"

  url "https://content-bluesound-com.s3.amazonaws.com/uploads/BluOS-Controller-#{version}-MacOS.zip"
  name "BluOS Controller"
  desc "Manage audio systems"
  homepage "https://www.bluesound.com/"

  livecheck do
    url "https://www.bluesound.com/downloads/"
    regex(%r{uploads/BluOS[._-]Controller[._-]v?(\d+(?:\.\d+)+)[._-]MacOS\.zip}i)
  end

  depends_on macos: :monterey

  app "BluOS Controller.app"

  zap trash: [
    "~/Library/Application Support/BluOS Controller",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.bluesound.bluos.sfl*",
    "~/Library/Logs/BluOS Controller",
    "~/Library/Preferences/com.bluesound.bluos.plist",
    "~/Library/Saved Application State/com.bluesound.bluos.savedState",
  ]
end
