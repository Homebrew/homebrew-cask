cask "kdeconnect" do
  version "21.12.1-816"
  sha256 "8775967bf73470c3064724235608e982208bdee8f8d719ecd03bb9313205cf5c"

  url "https://binary-factory.kde.org/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-#{version}-macos-64-clang.dmg"
  name "KDE Connect"
  desc "Enabling communication between all your devices"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://binary-factory.kde.org/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/"
    regex(/href=.*?kdeconnect-kde[._-]v?(\d+(?:[.-]\d+)+)-macos-64-clang\.dmg/i)
  end

  app "kdeconnect-indicator.app", target: "KDE Connect.app"

  uninstall quit: "org.kde.kdeconnect"

  zap trash: [
    "~/Library/Application Support/kpeoplevcard",
    "~/Library/Preferences/kdeconnect",
    "~/Library/Preferences/kdeconnect_runcommand",
    "~/Library/Preferences/kdeconnect_sendnotifications",
    "~/Library/Preferences/kdeconnect_share",
    "~/Library/Preferences/org.kde.kdeconnect.plist",
  ]
end
