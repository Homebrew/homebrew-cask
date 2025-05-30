cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.30.0"
  sha256 arm:   "c4a743a05ea4103e24de6b451f3c2cf47a5945dba7e9de59cd0d1f31bf47b531",
         intel: "7e76f73bdda8786d79273faaf561fb446d718606deeb0d0e5eae6e5d00cd8944"

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
