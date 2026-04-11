cask "idevice-pair" do
  version "0.1.10"
  sha256 "d16f99a208f706cb2c7d490467f408e73d1345df399db145dad3d0a3da29c262"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  depends_on macos: ">= :big_sur"

  app "idevice_pair.app"

  # No zap stanza required
end
