cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.17"
  sha256 arm:   "ec446692229ce4d3b85059c2a857eaa1bd86ad3073801dd273318e703318bb0a",
         intel: "9bf031ad515079f811c08b58b164e446d09f048063d3ea5a1377d7bed442df7b"

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
