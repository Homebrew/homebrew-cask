cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.28.0"
  sha256 arm:   "28f36cdfec7afb3d0841e84b7e4f43d54191e0895ee06c5513679d549ce5d590",
         intel: "cdc84860339f156607bafa705cdeddf4bacc764d0f87e95829bff2548afde0ba"

  url "https://d3i4cc4dqewpo9.cloudfront.net/#{version}/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net/"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://www.osohq.com/docs/app-integration/client-apis/cli"

  livecheck do
    url "https://d3i4cc4dqewpo9.cloudfront.net/latest/version"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
