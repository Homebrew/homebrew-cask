cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.32"
  sha256 arm:   "b6d22a65aca830a0ea14e3685941e97fed7b655ca1f6fc4b3aa222ec3242d511",
         intel: "62aae6686fc022120904ae385cc54715608a35f592e2eebd1ff7f064639a7c60"

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
