cask "launchpad-manager" do
  version "1.0.14"
  sha256 "e972bc4605138c9b036d4386a23da397b609981dff2f291d17985162df9f5372"

  url "https://launchpadmanager.com/appyos/#{version}/LaunchpadManager.dmg"
  name "Launchpad Manager"
  desc "Tool to manage the launchpad"
  homepage "https://launchpadmanager.com/"

  livecheck do
    url "https://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg"
    strategy :extract_plist
  end

  depends_on :macos

  app "Launchpad Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*",
    "~/Library/Application Support/Launchpad Manager",
    "~/Library/Preferences/com.attilamiklosi.yos.launchpadmanager.plist",
    "~/Library/Saved Application State/com.attilamiklosi.yos.launchpadmanager.savedState",
  ]
end
