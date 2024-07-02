cask "launchpad-manager" do
  on_catalina :or_older do
    version "1.0.10"
    sha256 "88b37120c0ae022309573c4d2587a6ec85df7895773bca0fd3b5ba6cd86461a6"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur :or_newer do
    version "1.0.13"
    sha256 "6b3042d9ae4d08bfba3e237b901f798674d7d0ab4a33b025a29c0852e9e1aa7d"

    livecheck do
      url "https://launchpadmanager.com/download_yosemite.php/LaunchpadManagerYosemite.dmg"
      strategy :extract_plist
    end

    depends_on macos: ">= :big_sur"
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
