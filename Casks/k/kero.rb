cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.33"
  sha256 arm:   "c5a55c48f4a0cbdbebc761adbb4c304c87e3d72a2919ee89c19c79a2ad6d905d",
         intel: "cba0c743d0ab4e957475292df6256729084102d95c834bc19cf54af61707e503"

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
