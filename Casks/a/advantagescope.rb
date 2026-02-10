cask "advantagescope" do
  arch arm: "arm64", intel: "x64"

  version "26.0.0"
  sha256 arm:   "3153f05bdd205fd464b31c978af93cdc2086afe7613a99f711bee0a002a3f90d",
         intel: "ace22a6f2c23aadd33074b861cbb804db475d630fcbb27f312f16e39a8daf25c"

  url "https://github.com/Mechanical-Advantage/AdvantageScope/releases/download/v#{version}/advantagescope-mac-#{arch}-v#{version}.dmg",
      verified: "github.com/Mechanical-Advantage/AdvantageScope/"
  name "AdvantageScope"
  desc "FRC log analysis tool"
  homepage "https://docs.advantagescope.org/"

  depends_on macos: ">= :monterey"

  app "AdvantageScope.app"

  zap trash: [
    "~/Library/Application Support/AdvantageScope",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.littletonrobotics.advantagescope.sfl*",
    "~/Library/Preferences/org.littletonrobotics.advantagescope.plist",
  ]
end
