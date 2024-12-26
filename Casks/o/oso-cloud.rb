cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.22.1"
  sha256 arm:   "7fb45e1c93b01ca5fcb6dc2ab170944d32d3ed2de569576bb4cdc21f0502eb7c",
         intel: "7ae78456cf348710ceb8215b576d5817a98f87b3b34434ed1786cc96a013e5d3"

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
