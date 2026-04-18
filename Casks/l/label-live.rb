cask "label-live" do
  version "4.8.1"
  sha256 "e68366ea8a34a760ab5c54d1cb1488d719346e69a4c28b54377cb269c47812a3"

  url "https://download.label.live/Label-LIVE-#{version}.dmg"
  name "Label LIVE"
  desc "Label design and printer software"
  homepage "https://label.live/"

  livecheck do
    url "https://s3.amazonaws.com/labellive.semireg.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :monterey"

  app "Label LIVE.app"

  zap trash: [
    "~/Library/Application Support/Label LIVE",
    "~/Library/Logs/Label LIVE",
    "~/Library/Preferences/com.semireg.LabelLIVE.plist",
    "~/Library/Saved Application State/com.semireg.LabelLIVE.savedState",
  ]
end
