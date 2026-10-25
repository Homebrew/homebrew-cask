cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.18"
  sha256 arm:   "5a0ebbc97e85214f2865035e6e2cc6166f12dc5e5f0ee2c1967ae870b41a6458",
         intel: "a69aae5fd4e216708c770fb567e0a20bc0dc2f7aef0d39edc869659d34408940"

  url "https://github.com/egoist/kero/releases/download/v#{version}/Kero.#{version}.#{arch}.dmg"
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
