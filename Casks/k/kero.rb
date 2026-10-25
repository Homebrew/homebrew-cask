cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.19"
  sha256 arm:   "65c7cbfdb03db6f842013542802a086524a7571175686d399f7ec72c9989d4ad",
         intel: "d2569714ea23206271d7578a1c868ecc2bb194e61c6cbcd18b15ce6869b2ccf7"

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
