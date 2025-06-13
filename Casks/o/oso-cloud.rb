cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.31.0"
  sha256 arm:   "0bda496782eff54c15a6e5ca2721f61be25329fd8b84db81264aa4fae47d0640",
         intel: "7c1e8e1cd8fdc0ab4a29e51a30693e707364e026a23575f261fe80e7087452f1"

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
