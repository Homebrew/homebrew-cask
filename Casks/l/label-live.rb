cask "label-live" do
  version "3.6.1"
  sha256 "d86f5c760dfc82c5a8deebfba6820901da792b19549db7010388a16611cb436f"

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
