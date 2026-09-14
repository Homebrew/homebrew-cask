cask "kde-connect" do
  version "26.08.1"
  sha256 "e481cad9046c129e9fd7ea64e665c141b5764db16da16d3b85fe36beb23574bc"

  url "https://download.kde.org/stable/release-service/#{version}/macos/kdeconnect-kde-#{version.major_minor}-macos-clang-arm64.dmg"
  name "KDE Connect"
  desc "Communicate with your handheld devices"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://kdeconnect.kde.org/download.html"
    regex(%r{href=.*?release-service/(\d+(?:\.\d+)+)/macos/kdeconnect-kde(?:-\d+(?:\.\d+)+)?-macos-clang-arm64\.dmg}i)
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
