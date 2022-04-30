cask "blobsaver" do
  arch = Hardware::CPU.intel? ? "intel" : "arm"

  version "3.2.0"

  if Hardware::CPU.intel?
    sha256 "f60846080a452e4c0bebf263770b5d371e5bab3487b80a7df220217bba042582"
  else
    sha256 "de78183eb7451c3f82c0ed2c165a3b2c9f6623dd42272e303293f541520c2f5d"
  end

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
