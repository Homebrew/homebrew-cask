cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.31"
  sha256 arm:   "57b1979b6a239a77fa19143581611e0221eaf1f81b694b6d04803f6ea92b6e5e",
         intel: "ce6bb35cdfca150db2edb14ce63c16108b27e1557b6650d75b784c617ecfbc8f"

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
