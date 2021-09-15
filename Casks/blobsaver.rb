cask "blobsaver" do
  version "3.0.2"
  sha256 "a651ff45bafb73cfee635f1a3ef8fbfa2ec394183415803520951dc8f4544b1e"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
