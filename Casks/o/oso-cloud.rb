cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.35.1"
  sha256 arm:   "31a5d902266655d5279cc5622007d3be1982930d7c5bdf4726f897913898ea10",
         intel: "9b3dc8aae1245ec485efe5135c7503c90308d52e334f13c60598740be35c7a03"

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
