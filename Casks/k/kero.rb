cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.36"
  sha256 arm:   "b8edd63e7693616066a6a7c3d2bc9b825b02234ff31d83c3bea53d502972fae0",
         intel: "669674f0bd8b28e5b23f1d2e429902f079e1b16ea0e316b09b299029068adc35"

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
