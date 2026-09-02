cask "kde-connect" do
  version "26.04.2"
  sha256 "e2be426417eb55ff9a4bcdf959d05c74751a2b83240a2368b5645aef4252d718"

  url "https://download.kde.org/stable/release-service/#{version}/macos/kdeconnect-kde-macos-clang-arm64.dmg"
  name "KDE Connect"
  desc "Communicate with your handheld devices"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://kdeconnect.kde.org/download.html"
    regex(%r{href=.*?release-service/(\d+(?:\.\d+)+)(?:/macos/kdeconnect-kde-macos-clang-arm64.dmg)}i)
  end

  depends_on macos: :ventura, arch: :arm64

  app "KDE Connect.app"
  binary "#{appdir}/KDE Connect.app/Contents/MacOS/kdeconnect-cli",
         target: "kdeconnect"

  uninstall quit: "org.kde.kdeconnect"

  zap trash: [
    "~/Library/Application Support/kdeconnect.app",
    "~/Library/Application Support/kpeoplevcard/kdeconnect*",
    "~/Library/Caches/kdeconnect*",
    "~/Library/Preferences/kdeconnect",
    "~/Library/Preferences/org.kde.kdeconnect.plist",
    "~/Library/Preferences/State/kdeconnect.appstaterc",
  ]
end
