cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.33.0"
  sha256 arm:   "88191d7528662f7b127e0a36a1c1d4c54d9648ddfcbc5fa9be921d86e0ca5cbb",
         intel: "3405e85c81015c8b6e91a082ba57119202775540b7be9b714db2335181e4779d"

  url "https://d3i4cc4dqewpo9.cloudfront.net/#{version}/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net/"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://www.osohq.com/docs/app-integration/client-apis/cli"

  livecheck do
    url "https://d3i4cc4dqewpo9.cloudfront.net/latest/version"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :unsigned

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
