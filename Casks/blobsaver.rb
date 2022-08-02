cask "blobsaver" do
  arch = Hardware::CPU.intel? ? "intel" : "arm"

  version "3.2.1"

  if Hardware::CPU.intel?
    sha256 "341dad87e5a36f7f6c1f14050a4f44128afa2da5651abea761af59054d5029c8"
  else
    sha256 "0e510dd7315af465a9f1f333e7f303e16871fa9964ae9c1632145d38b6e32e04"
  end

  url "https://github.com/airsquared/blobsaver/releases/download/v#{version}/blobsaver-#{arch}-#{version}.dmg"
  name "blobsaver"
  desc "GUI for automatically saving SHSH blobs"
  homepage "https://github.com/airsquared/blobsaver"

  app "blobsaver.app"

  zap trash: "~/Library/Preferences/airsquared.blobsaver.app.plist"
end
