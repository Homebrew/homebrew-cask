cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.34"
  sha256 arm:   "88d39719218fe3ba5a77def8dcb4954ac4f1d1e8893b599f1f917ea771897496",
         intel: "d5a78e0907d5cb6c8a36871a34aac7033dc9985964793b5d7c88c0cf091400eb"

  url "https://github.com/egoist/kero/releases/download/v#{version}/kero-#{version}-#{arch}.dmg"
  name "Kero"
  desc "Terminal app optimised for agents"
  homepage "https://kero.sh/"

  auto_updates true
  depends_on macos: :monterey

  app "Kero.app"
  binary "#{appdir}/Kero.app/Contents/MacOS/Kero", target: "kero"

  uninstall launchctl: "sh.kero.kerod",
            quit:      "sh.kero"

  zap trash: [
    "~/.config/kero",
    "~/Library/Application Support/kero",
    "~/Library/Caches/kero",
    "~/Library/Caches/sh.kero",
    "~/Library/HTTPStorages/kero.binarycookies",
    "~/Library/HTTPStorages/sh.kero",
    "~/Library/HTTPStorages/sh.kero.binarycookies",
    "~/Library/Preferences/kero.plist",
    "~/Library/Preferences/sh.kero.plist",
    "~/Library/WebKit/kero",
    "~/Library/WebKit/sh.kero",
  ]
end
