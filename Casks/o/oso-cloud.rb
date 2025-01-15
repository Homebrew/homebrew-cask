cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.23.0"
  sha256 arm:   "2a02e29885145e8c40c54f6dd18a70407296b71c38afa34b041f1c27a8d8052b",
         intel: "79d8b00eb03b199ae8f71eeaee218b51e18a42bb76587c8c1d4fcbb3e4183acf"

  url "https://d3i4cc4dqewpo9.cloudfront.net/#{version}/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net/"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://www.osohq.com/docs/app-integration/client-apis/cli"

  livecheck do
    url "https://www.osohq.com/docs/changelog/oso-cloud-cli"
    regex(/>\s*v?(\d+(?:\.\d+)+)\s*</i)
  end

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
