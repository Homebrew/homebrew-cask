cask "blobsaver" do
  version "3.0.4"
  sha256 "4c5b0576c2e41430fca128576ac0f83e25ea8cd6c6199b5e5af178e037273cb6"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
