cask "ds4-control" do
  version "1.8.2"
  sha256 "f97fdd97a8ce3a678896dba5bce0dff12592390c4a04e4198e5628d5a5b0dc4a"

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
