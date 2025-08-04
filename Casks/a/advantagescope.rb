cask "advantagescope" do
  arch arm: "arm64", intel: "x64"

  version "4.1.6"
  sha256 arm:   "9fdefa13574af5b132dde4eb013e030e346704d4f788b4713a4b59f5dab9c0f3",
         intel: "1310daf65c2c2412f17bc511bc973b294cb85dca8b8e890c82a46192eadd2f67"

  url "https://github.com/Mechanical-Advantage/AdvantageScope/releases/download/v#{version}/advantagescope-mac-#{arch}-v#{version}.dmg",
      verified: "github.com/Mechanical-Advantage/AdvantageScope/"
  name "AdvantageScope"
  desc "FRC log analysis tool"
  homepage "https://docs.advantagescope.org/"

  depends_on macos: ">= :catalina"

  app "AdvantageScope.app"

  zap trash: [
    "~/Library/Application Support/AdvantageScope",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.littletonrobotics.advantagescope.sfl*",
    "~/Library/Preferences/org.littletonrobotics.advantagescope.plist",
  ]
end
