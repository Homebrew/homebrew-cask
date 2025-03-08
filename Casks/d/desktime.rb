cask "desktime" do
  url_param = on_arch_conditional arm: "?m1", intel: ""

  version "6.0.7"
  sha256 arm:   "b199ad26a43d8f287938f4b77d38e2834de122d4a120885b7ae29d6ca0016884",
         intel: "ad7e767d5ea52396f6801e5473724ef79958523db163f76a5993bb622e198fd7"

  url "https://desktime.com/updates/electron/mac#{url_param}"
  name "DeskTime"
  desc "Time tracker with additional workforce management features"
  homepage "https://desktime.com/"

  livecheck do
    url :url
    strategy :header_match
    regex(/filename=DeskTime-(\d+(?:\.\d+)+)-(?:x64|arm64)\.dmg/)
  end

  app "DeskTime.app"

  uninstall quit: "DeskTime"

  zap trash: [
    "~/Library/Application Support/DeskTime",
    "~/Library/Logs/DeskTime",
    "~/Library/Preferences/com.desktime.DeskTime.plist",
  ]
end
