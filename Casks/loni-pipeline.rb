cask "loni-pipeline" do
  version "7.0.3"
  sha256 "2e65292a01ff5ca8ac87527ec6d0864bced0ad5a3c756aa0734dbf7688b02881"

  url "https://pipeline.loni.usc.edu/download.php?file=pipeline_releases/Pipeline-#{version}-macosx.dmg"
  name "LONI Pipeline"
  desc "Free distributed system for collaborative neuroimaging research"
  homepage "https://pipeline.loni.usc.edu/"

  app "LONI Pipeline.app"

  zap trash: [
    "~/Library/Preferences/Pipeline",
    "~/Library/Preferences/com.jar2app.example.LONI Pipeline.plist",
    "~/Library/Saved Application State/com.jar2app.example.LONI Pipeline.savedState",
  ]
end
