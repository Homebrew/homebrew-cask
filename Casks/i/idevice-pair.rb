cask "idevice-pair" do
  version "0.1.9"
  sha256 "6a86716ca3485aa90752c35bca014972c4cc4329917b5ba62822487e9baaa413"

  url "https://github.com/jkcoxson/idevice_pair/releases/download/v#{version}/idevice_pair--macos-universal.dmg"
  name "idevice_pair"
  desc "Generate pair records for iOS devices"
  homepage "https://github.com/jkcoxson/idevice_pair"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "idevice_pair.app"
end
