cask "ds4-control" do
  version "1.7.0"
  sha256 "f1840fe0b0c99bd238d85ba8ac019aec32d317374a7b19bbc0dc4cb10f317c21"

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
