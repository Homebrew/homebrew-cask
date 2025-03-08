cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.27.1"
  sha256 arm:   "676e0107396d4c3374b698b73cdaf22af45a3a6b03f2471f4eabb3669acee3b8",
         intel: "36e0f6839815664c3cda600376b99c4b443d5a9c24577375d4d421bf1c21ba69"

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
