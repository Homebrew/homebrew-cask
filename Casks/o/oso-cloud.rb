cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.26.1"
  sha256 arm:   "b4f692a7d4f65e8f268eebaaf780022bb5db8817dbf29668bcaff55953f6d431",
         intel: "7375deadf2ccd779b4c44a92fd6a3a1b421be57621e4f84ad6d222c74e8d55e3"

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
