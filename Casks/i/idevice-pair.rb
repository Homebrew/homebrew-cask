cask "idevice-pair" do
  version "1.0.0"
  sha256 "5b021c70e0983600e3f85442aa7a16e10b845ed6a8d0da42b5c39b02098b65c5"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/v#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  depends_on macos: :big_sur

  app "idevice_pair.app"

  # No zap stanza required
end
