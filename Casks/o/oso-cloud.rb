cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.34.0"
  sha256 arm:   "2c6ffa38eae38558b229e5a4244e3115e0fd463e90daf83787bebe5379f68bb2",
         intel: "0ff9c79fd118199be31695ab7b4cb2dec0718df05e4031100567c9012cadfde6"

  url "https://d3i4cc4dqewpo9.cloudfront.net/#{version}/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net/"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://www.osohq.com/docs/app-integration/client-apis/cli"

  livecheck do
    url "https://d3i4cc4dqewpo9.cloudfront.net/latest/version"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
