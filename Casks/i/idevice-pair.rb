cask "idevice-pair" do
  version "0.1.14"
  sha256 "c510409552083b89ee4ab513d9d923c57013d16401260c525860243e5e158a84"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  depends_on macos: :big_sur

  app "idevice_pair.app"

  # No zap stanza required
end
