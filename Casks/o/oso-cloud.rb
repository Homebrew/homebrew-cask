cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.37.0"
  sha256 arm:   "d79536b0c4bc71794580b0c64718956f383d1dd9b92d62c2d8ee01dedb8b10f4",
         intel: "0421456b2f13370c75316f5cb43b10433f85ce58a63487b1105dfe2f1ce046e1"

  url "https://d3i4cc4dqewpo9.cloudfront.net/#{version}/oso_cli_mac_osx_#{arch}",
      verified: "d3i4cc4dqewpo9.cloudfront.net/"
  name "OSO Cloud CLI"
  desc "Tool for interacting with OSO Cloud"
  homepage "https://www.osohq.com/docs/app-integration/client-apis/cli"

  livecheck do
    url "https://d3i4cc4dqewpo9.cloudfront.net/latest/version"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on :macos

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
