cask "blobsaver" do
  version "3.0.1"
  sha256 "397dea9211abc25e35383ac67ea9ef87c7394047df1771490151ffbb3c31af8b"

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
