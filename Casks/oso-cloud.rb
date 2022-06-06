cask "oso-cloud" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version :latest
  sha256 :no_check

  url "https://d3i4cc4dqewpo9.cloudfront.net/latest/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://cloud-docs.osohq.com/get-started/quickstart"

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"
end
