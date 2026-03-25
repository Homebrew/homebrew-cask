cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.36.1"
  sha256 arm:   "fdf364137ce3ae1117848b72b8cc564eaa07e5fad30585fa70113854198b976a",
         intel: "187f92d97d1f62e17bc1578170defd3bfb64004236a3e61a1eb2a12c9f46af9d"

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

  binary "oso_cli_mac_osx_#{arch}", target: "oso-cloud"

  zap trash: "~/.oso-update"
end
