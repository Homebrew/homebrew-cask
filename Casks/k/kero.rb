cask "kero" do
  arch arm: "arm64", intel: "amd64"

  version "2.1.10"
  sha256 arm:   "fe7375d83f3aa97512040cdaa6fe8f184e9b72e0d310e3df5c4c4e9a84b50eae",
         intel: "9f47b957dc03d52f0eaa21652c21ed18c2fccd0ee91f90875eff0908f0332f7c"

  url "https://github.com/egoist/kero/releases/download/v#{version}/Kero.#{version}.#{arch}.dmg"
  name "Kero"
  desc "Terminal app optimised for agents"
  homepage "https://kero.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

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
