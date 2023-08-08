cask "launchpad-manager" do
  version "1.0.13"
  sha256 :no_check

  url "https://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg"
  name "Launchpad Manager"
  desc "Tool to manage the launchpad"
  homepage "https://launchpadmanager.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "Launchpad Manager.app"

  zap trash: [
    "~/Library/Application Support/Launchpad Manager",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*",
  ]
end
