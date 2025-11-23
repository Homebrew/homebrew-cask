cask "launchpad-manager" do
  on_catalina :or_older do
    version "1.0.10"
    sha256 "88b37120c0ae022309573c4d2587a6ec85df7895773bca0fd3b5ba6cd86461a6"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.0.14"
    sha256 "e972bc4605138c9b036d4386a23da397b609981dff2f291d17985162df9f5372"

    livecheck do
      url "https://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg"
      strategy :extract_plist
    end
  end

  url "https://launchpadmanager.com/appyos/#{version}/LaunchpadManager.dmg"
  name "Launchpad Manager"
  desc "Tool to manage the launchpad"
  homepage "https://launchpadmanager.com/"

  app "Launchpad Manager.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.attilamiklosi.yos.launchpadmanager.sfl*",
    "~/Library/Application Support/Launchpad Manager",
    "~/Library/Preferences/com.attilamiklosi.yos.launchpadmanager.plist",
    "~/Library/Saved Application State/com.attilamiklosi.yos.launchpadmanager.savedState",
  ]
end
