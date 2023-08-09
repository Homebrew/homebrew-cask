cask "blobsaver" do
  arch arm: "arm", intel: "intel"

  version "3.5.1"
  sha256 arm:   "5c267bde6930bdea4007a601b55310c989226303cc7811f0d1f8ec23df542edc",
         intel: "8ceb2536b73d0c36af84b0a1eb61131a5263c142517566a651e69b0abbea1071"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"
  binary "#{appdir}/blobsaver.app/Contents/MacOS/blobsaver"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
