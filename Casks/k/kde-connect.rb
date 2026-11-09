cask "kde-connect" do
  version "26.08.2"
  sha256 "1c6328fca363af229b48b238717ab176747b06b57714e2bb968a041c38ced153"

  url "https://download.kde.org/stable/release-service/#{version}/macos/kdeconnect-kde-macos-clang-arm64.dmg"
  name "KDE Connect"
  desc "Communicate with your handheld devices"
  homepage "https://kdeconnect.kde.org/"

  livecheck do
    url "https://kdeconnect.kde.org/download.html"
    regex(%r{href=.*?release-service/(\d+(?:\.\d+)+)(?:/macos/kdeconnect-kde-macos-clang-arm64\.dmg)}i)
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
