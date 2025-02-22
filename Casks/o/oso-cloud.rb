cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.0"
  sha256 arm:   "6957a10cac8a566f14c8b641be351ed3f18cdb96d238cf58465399a6077745a7",
         intel: "4eae9a5b429cd4af0ce12b13d89c8b3fad709a22f7a85f97114b0b31d8885b1b"

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
