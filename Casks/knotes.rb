cask "knotes" do
  version "2.6.0"
  sha256 "5946b48b0e6ac588331336f760711c11c53ef9b0030616f39db6e9a41551d434"

  # knotes2.s3-ap-northeast-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://knotes2.s3-ap-northeast-1.amazonaws.com/download/mac/Knotes-#{version}.dmg"
  appcast "https://knotesapp.com/"
  name "Knotes"
  homepage "https://knotesapp.com/"

  app "Knotes.app"

  zap trash: [
    "~/Library/Application Support/knotes",
    "~/Library/Logs/knotes",
    "~/Library/Preferences/com.knotesapp.knotes.helper.plist",
    "~/Library/Preferences/com.knotesapp.knotes.plist",
    "~/Library/Saved Application State/com.knotesapp.knotes.savedState",
  ]
end
