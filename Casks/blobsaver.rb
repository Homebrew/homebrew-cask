cask "blobsaver" do
  arch arm: "arm", intel: "intel"

  version "3.3.0"
  sha256 arm:   "4ab23b9dee4f1a742d36f5a6c5d53ee1e04178d177240304363593a7e83e2998",
         intel: "0a26862b1153ad81de80f4ba36157bb4c6202c8f31a2daf08c0038a4af2d2f41"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
