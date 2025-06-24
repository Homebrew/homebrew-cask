cask "kdeconnect" do
  arch arm: "arm64", intel: "x86_64"

  version "25.04,4996"
  sha256 arm:   "f75de03ef019f31849695ce787920b64a7e69c64c26725c7b827051a2c2a0476",
         intel: "a05bc5eb2fea06199eac3e3b7a1e283407b4c26fa463bcc4fb120bf24a2f274e"

  url "https://cdn.kde.org/ci-builds/network/kdeconnect-kde/release-#{version.major_minor}/macos-#{arch}/kdeconnect-kde-release_#{version.major_minor}-#{version.csv.second}-macos-clang-#{arch}.dmg",
      verified: "cdn.kde.org/ci-builds/network/kdeconnect-kde/"
  name "KDE Connect"
  desc "Enabling communication between all your devices"
  homepage "https://kdeconnect.kde.org/"

  app "kdeconnect-indicator.app"

  zap trash: [
    "~/Library/Application Support/kdenconnect.sms",
    "~/Library/Caches/kdeconnect-indicator",
    "~/Library/Caches/kdeconnect.daemon",
    "~/Library/Caches/kdeconnect.sms",
    "~/Library/Preferences/kdeconnect",
    "~/Library/Preferences/org.kde.kdeconnect.plist",
  ]
end
