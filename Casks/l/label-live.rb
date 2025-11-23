cask "label-live" do
  version "4.3.2"
  sha256 "6e4a782327a24c3de173f59e745e3878f1c4259414cd2164e22559071cc91271"

  url "https://download.label.live/Label-LIVE-#{version}.dmg"
  name "Label LIVE"
  desc "Label design and printer software"
  homepage "https://label.live/"

  livecheck do
    url "https://s3.amazonaws.com/labellive.semireg.com/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Label LIVE.app"

  zap trash: [
    "~/Library/Application Support/Label LIVE",
    "~/Library/Logs/Label LIVE",
    "~/Library/Preferences/com.semireg.LabelLIVE.plist",
    "~/Library/Saved Application State/com.semireg.LabelLIVE.savedState",
  ]
end
