cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.33.2"
  sha256 arm:   "07df25409cabe95dd6b22f500144a7a298e3e7fff8bb8f456da9eeaa56745d89",
         intel: "72b5a7acc4eebfbada56209e228d71d5d0dbf42bf035cf820d807b2315eba154"

  url "https://d3i4cc4dqewpo9.cloudfront.net/#{version}/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net/"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://www.osohq.com/docs/app-integration/client-apis/cli"

  livecheck do
    url "https://d3i4cc4dqewpo9.cloudfront.net/latest/version"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
