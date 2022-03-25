cask "rescuetime" do
  version "3.0.13.2"
  sha256 :no_check

  url "https://www.rescuetime.com/installers/RescueTimeInstaller_X.pkg"
  name "RescueTime"
  desc "Time optimising application"
  homepage "https://www.rescuetime.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  pkg "RescueTimeInstaller_X.pkg"

  uninstall pkgutil: "com.rescuetime.RescueTime"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.rescuetime.rescuetime.sfl*",
    "~/Library/Caches/com.rescuetime.RescueTime",
    "~/Library/Preferences/com.rescuetime.RescueTime.plist",
    "~/Library/RescueTime.com",
  ]
end
