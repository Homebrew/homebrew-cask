cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.32.1"
  sha256 arm:   "34cf147ba11ee5e0999b35dd7f329dd9bfae46bc970b59a108fa2d47a59782ef",
         intel: "5f2607c3ab94f2e29779ae4a92115f433b2be4ba536163101e8137b2db5dc5cd"

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
