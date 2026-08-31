cask "ds4-control" do
  version "1.6.0"
  sha256 "2a26bf3ca70bec249b19330aaf52258b01ba02571590eeb7b54c0b873e502015"

  url "https://github.com/notatestuser/ds4-control/releases/download/v#{version}/DS4-Control-v#{version}.dmg"
  name "DS4 Control"
  desc "Menu bar pane for DeepSeek V4 via DwarfStar"
  homepage "https://github.com/notatestuser/ds4-control"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "DS4 Control.app"

  zap trash: [
    "~/Library/Application Support/DS4 Control",
    "~/Library/Caches/sg.embeddedtech.ds4control",
    "~/Library/HTTPStorages/sg.embeddedtech.ds4control",
    "~/Library/Preferences/sg.embeddedtech.ds4control.plist",
  ]
end
