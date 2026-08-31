cask "idevice-pair" do
  version "1.1.0"
  sha256 "9ff54171dccdb0a9b0e72ec89e43a479823c53ee54c2121fe9f053cc2cb940ce"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/v#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  depends_on macos: :big_sur

  app "idevice_pair.app"

  # No zap stanza required
end
