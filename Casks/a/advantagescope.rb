cask "advantagescope" do
  arch arm: "arm64", intel: "x64"

  version "26.0.2"
  sha256 arm:   "01022c3e0f4df3ceb8831d23f9c5d9b36ee27d84a23e57ed1118d4125ea35434",
         intel: "959aea32909509477d079741456a9aad50ea547710dc3a4d16aa8a1a02a21612"

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
