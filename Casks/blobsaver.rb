cask "blobsaver" do
  arch arm: "arm", intel: "intel"

  version "3.4.0"
  sha256 arm:   "9705418a6f4eb714acae69624a80cd461773ca95a70222c93b25ede14871049a",
         intel: "8625a1274ae2357a8b7236977b366b1aa11a7b900a848da764500c079e37b478"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
