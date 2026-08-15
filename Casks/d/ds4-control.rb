cask "ds4-control" do
  version "1.5.0"
  sha256 "d8ce3b1d1522c75fb76bc248fe101cc07aa725cf5b5b8548a29c291f533d762e"

  url "https://github.com/notatestuser/ds4-control/releases/download/v#{version}/DS4-Control-v#{version}.dmg"
  name "DS4 Control"
  desc "Menu bar pane for DeepSeek V4 via DwarfStar"
  homepage "https://github.com/notatestuser/ds4-control"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "DS4 Control.app"

  zap trash: [
    "~/Library/Application Support/DS4 Control",
    "~/Library/Caches/sg.embeddedtech.ds4control",
    "~/Library/HTTPStorages/sg.embeddedtech.ds4control",
    "~/Library/Preferences/sg.embeddedtech.ds4control.plist",
  ]
end
