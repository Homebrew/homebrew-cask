cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.29.2"
  sha256 arm:   "d9d94b175a42d1e8d1bd8c76d145af0506c971b3dda4702ddb0688566448c770",
         intel: "498b28c932cbe21daa8320b44c7a3263bc2a17617397a67cc7b4d12f8ff20620"

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
