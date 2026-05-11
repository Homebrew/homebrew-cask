cask "idevice-pair" do
  version "0.1.13"
  sha256 "d1501f7da6d8156bf739fe2dafb4e0b38b3027ddabedcdc4f61544902a9491c4"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  depends_on macos: ">= :big_sur"

  app "idevice_pair.app"

  # No zap stanza required
end
