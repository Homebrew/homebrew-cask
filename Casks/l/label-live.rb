cask "label-live" do
  version "3.5.4"
  sha256 "932f224f9df6e2131fa704ff8b5194d7735f70e3ef99828f95ee2aa07de2a1e7"

  url "https://download.label.live/Label-LIVE-#{version}.dmg"
  name "Label LIVE"
  desc "Label design and printer software"
  homepage "https://label.live/"

  livecheck do
    url "https://s3.amazonaws.com/labellive.semireg.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :high_sierra"

  app "Label LIVE.app"

  zap trash: [
    "~/Library/Application Support/Label LIVE",
    "~/Library/Logs/Label LIVE",
    "~/Library/Preferences/com.semireg.LabelLIVE.plist",
    "~/Library/Saved Application State/com.semireg.LabelLIVE.savedState",
  ]
end
