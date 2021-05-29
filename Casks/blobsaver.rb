cask "blobsaver" do
  version "3.0"
  sha256 "b39bd9d811e54907ba3fd03be12660d3dd8e9312b795c400eae03dc2f754672d"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
