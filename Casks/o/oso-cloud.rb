cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version :latest
  sha256 :no_check

  url "https://d3i4cc4dqewpo9.cloudfront.net/latest/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net/"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://www.osohq.com/docs/app-integration/client-apis/cli"

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
