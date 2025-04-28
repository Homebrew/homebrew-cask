cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.29.0"
  sha256 arm:   "f2e8e6975a2f385877cc86bfaadc742d9865fddf531d7cfb38b3eb425c97228f",
         intel: "b36ce412277099eb54c8e326470b892ee5d6c1433d9a3009f319b172772921e2"

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
