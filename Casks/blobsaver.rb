cask "blobsaver" do
  arch arm: "arm", intel: "intel"

  version "3.5.0"
  sha256 arm:   "3eae2b623eb047c499935d7b069b87ebe8ca544334ecb7c7dedfad551a6bf601",
         intel: "5d48b72d4405ab36c2c6592cae1c5e8e38ae033878b76cddca12a20fff456733"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"
  binary "#{appdir}/blobsaver.app/Contents/MacOS/blobsaver"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
