cask "kashot" do
  arch arm: "arm64", intel: "x64"

  version "0.3.7"
  sha256  arm:   "7b17875f27a85aac152cd9e121dd3e3a26f375d85f6d2b0535f16d77f0b25e68",
          intel: "e5f13152b2ab26895d8448851f56150660dcd22fb423dafdd3613dcc514f5f59"

  url       "https://github.com/singhpratech/kashot/releases/download/v#{version}/Kashot-macos-#{arch}.dmg",
            verified: "github.com/singhpratech/kashot/"
  name      "Kashot"
  desc      "Fast screenshots with annotations — tray-resident, hotkey-driven, free"
  homepage  "https://kashot.org/"

  app "Kashot.app"

  zap trash: [
    "~/Library/Application Support/Kashot",
    "~/Library/Preferences/org.kashot.app.plist",
  ]
end
