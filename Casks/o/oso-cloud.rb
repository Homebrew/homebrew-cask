cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.37.2"
  sha256 arm:   "c9e236045f0a90ea5a2476556997562cc4b7ea6ba0d8bba2a8dc82f7cde2a2b6",
         intel: "017dd11b0b4fa728fde9b70691b7b11120bc5877dc47c22953535f77a054d9c6"

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
