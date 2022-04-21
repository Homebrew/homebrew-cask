cask "blobsaver" do
  arch = Hardware::CPU.intel? ? "intel" : "arm"

  version "3.1.0"

  if Hardware::CPU.intel?
    sha256 "fe01a41f22c570bfa0afbd766dd0f5b5accd2ebfa37fa4a96d1e0da168b7aece"
  else
    sha256 "01824877c6e37419a3bfbfc64515e5f4e13bfeb26e0ca67a8498a4db1d17bc77"
  end

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
