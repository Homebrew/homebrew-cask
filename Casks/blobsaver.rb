cask "blobsaver" do
  arch arm: "arm", intel: "intel"

  version "3.4.1"
  sha256 arm:   "60e7ab55d450eb3d41f29a5156a92af8fb7e5dfbe278da2a623f8bd16b2eb4ea",
         intel: "4cfb291ec952616c1cb63a4e075a4e4327701ba6028ff3880ce4a5d131296609"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
