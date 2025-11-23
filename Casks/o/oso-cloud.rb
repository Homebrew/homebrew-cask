cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.35.0"
  sha256 arm:   "52cd1e19cd5672a1db1a3ae6f1410085f8a91ebb2a4ef70a44550ddf0039ccd5",
         intel: "e2f9ff6fad2942c2ba7cd696c54a21bdb1c64d3e5b7b7d746713cb4a03c44394"

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
