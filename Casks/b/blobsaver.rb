cask "blobsaver" do
  arch arm: "arm", intel: "intel"

  version "3.5.2"
  sha256 arm:   "85a25c4148bb43c213b6cc1be31beeb748e94f37334ff705f846b205da0b06ce",
         intel: "06bf93418d68da77cfb77ef87381f1cfc175c3dfe3338fe16819b6cf8e90903a"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"
  binary "#{appdir}/blobsaver.app/Contents/MacOS/blobsaver"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
