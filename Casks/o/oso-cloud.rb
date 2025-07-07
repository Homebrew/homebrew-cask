cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.32.2"
  sha256 arm:   "b3e457b330231cf1d14d28e117e51f5088c8217f825c4c3d102354a61097a868",
         intel: "c203835ca420276500e83793480a5bf8453f276751da5d0bed3e7d007c083032"

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
