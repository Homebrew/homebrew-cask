cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.22.2"
  sha256 arm:   "2d88506a29a0fd036e52161c4f1e9f76c9b646fe5425a73662343d79904ed240",
         intel: "2d7aca4a6dba7e0ea39a5ed1457de3e5198e282e79331b60f25771dca56baedf"

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
