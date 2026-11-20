cask "idevice-pair" do
  version "1.2.0"
  sha256 "b3a7039d5ea0b93b0c1ae931ddac15de68639d325bd16cbd654b0423e897a59e"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/v#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  depends_on :macos

  app "idevice_pair.app"

  zap :not_required
end
