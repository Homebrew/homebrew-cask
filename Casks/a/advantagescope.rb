cask "advantagescope" do
  arch arm: "arm64", intel: "x64"

  version "26.0.1"
  sha256 arm:   "5aac6ad2e4255f3e769c6240fe3813acf83f4a693c663881e2d467b53031e91d",
         intel: "4d0670ca511aa8edae69a0429d8e1c88b04065b667e415393fb895bef21dd388"

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
