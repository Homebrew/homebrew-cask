cask "blobsaver" do
  version "3.0.3"
  sha256 "c52423d715f527fc404f34dac2528b405bc0fece31081a5e94292305549512c4"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
