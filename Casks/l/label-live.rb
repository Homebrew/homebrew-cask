cask "label-live" do
  version "4.12.3"
  sha256 "77f9b739ae6e1a233ea524b67a660a25fcfdc7d880a8f30c4c097cb951ff3d2d"

  url "https://download.label.live/Label-LIVE-#{version}.dmg"
  name "Label LIVE"
  desc "Label design and printer software"
  homepage "https://label.live/"

  livecheck do
    url "https://s3.amazonaws.com/labellive.semireg.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Label LIVE.app"

  zap trash: [
    "~/Library/Application Support/Label LIVE",
    "~/Library/Logs/Label LIVE",
    "~/Library/Preferences/com.semireg.LabelLIVE.plist",
    "~/Library/Saved Application State/com.semireg.LabelLIVE.savedState",
  ]
end
