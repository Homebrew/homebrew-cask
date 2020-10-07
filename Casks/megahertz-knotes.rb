cask "megahertz-knotes" do
  version "2.6.0"
  sha256 "5946b48b0e6ac588331336f760711c11c53ef9b0030616f39db6e9a41551d434"

  # knotes2.s3-ap-northeast-1.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://knotes2.s3-ap-northeast-1.amazonaws.com/download/mac/Knotes-#{version}.dmg"
  appcast "https://knotes#{version.major}-release-cn.s3.amazonaws.com/mac/latest-mac.yml"
  name "Knotes"
  desc "Reading notes management tool"
  homepage "https://knotesapp.com/"

  app "Knotes.app"

  zap trash: [
    "~/Library/Application Support/Knotes*",
    "~/Library/Logs/Knotes*",
    "~/Library/Preferences/com.knotesapp.knotes.helper.plist",
  ]
end
