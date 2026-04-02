cask "idevice-pair" do
  version "0.1.9-rppairing"
  sha256 "4d72198366f2873450cde14811de0fae10d305f3e4a94358e234544a22f1e05c"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/v#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  depends_on macos: ">= :big_sur"

  app "idevice_pair.app"

  # No zap stanza required
end
