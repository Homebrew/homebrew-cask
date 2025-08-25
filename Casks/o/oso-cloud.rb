cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.33.3"
  sha256 arm:   "ad370fd22bef8c135c75ee30b2fee2a36adbe99f0da1f2086baeaa3e953a1d44",
         intel: "7d65fece9e9ebb8ecf5ff8daea5c97bac435855fd28cfa28391b0cb2a85509a6"

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
