cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.15"
  sha256 arm:   "d055b5eb24222172820b81db0fa38c36874f34d3e7482a674914c6006cc7d222",
         intel: "6e2dcee07d57f4eaec507543ebba233496bb8fdfb1a18d90fed9873abea5fb2a"

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
