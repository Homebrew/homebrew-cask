cask "kdeconnect" do
  version "21.12.1-816"
  sha256 :no_check

  url "https://binary-factory.kde.org/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/kdeconnect-kde-21.12.1-816-macos-64-clang.dmg"
  name "KDE Connect"
  desc "Enabling communication between all your devices"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://binary-factory.kde.org/job/kdeconnect-kde_Release_macos/lastSuccessfulBuild/artifact/"
    strategy :page_match
    regex(/href=.*?kdeconnect-kde-([\d.]+)-macos-64-clang.dmg/i)
  end

  app "kdeconnect-indicator.app", target: "KDE Connect.app"
end
