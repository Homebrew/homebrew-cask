cask "herd" do
  on_arm do
    version "2.0.3"
    sha256 "0bd210571551eebcb081d9a9b29c94c680fd75b3125001c77077ce9449badd24"

    # The appcast may exclude newer versions if a `build` parameter is omitted.
    livecheck do
      url "https://herd.laravel.com/api/versions?build=9999"
      strategy :sparkle, &:short_version
    end

    depends_on macos: :sonoma

    uninstall launchctl: "de.beyondco.herd.helper",
              quit:      "Herd.app",
              delete:    "/Library/PrivilegedHelperTools/de.beyondco.herd.helper"
  end
  on_intel do
    version "1.30.2"
    sha256 "399a548d2e7cb838c9e8be1f5f0d54b42634ac132ef52c9370f5fd5a507f512b"

    livecheck do
      skip "Legacy version"
    end

    depends_on macos: :monterey

    uninstall quit:   "Herd.app",
              delete: "/etc/sudoers.d/herd"
  end

  url "https://download.herdphp.com/app_versions/Herd_#{version}.dmg"
  name "Laravel Herd"
  desc "Laravel and PHP development environment manager"
  homepage "https://herd.laravel.com/"

  auto_updates true

  app "Herd.app"

  zap trash: [
    "~/Herd",
    "~/Library/Application Support/Herd",
    "~/Library/Caches/de.beyondco.herd",
    "~/Library/Caches/SentryCrash/Herd",
    "~/Library/HTTPStorages/de.beyondco.herd",
    "~/Library/HTTPStorages/de.beyondco.herd.binarycookies",
    "~/Library/Preferences/de.beyondco.herd.plist",
    "~/Library/Saved Application State/de.beyondco.herd.savedState",
    "~/Library/WebKit/de.beyondco.herd",
  ]
end
