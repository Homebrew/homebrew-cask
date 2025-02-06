cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.26.0"
  sha256 arm:   "8880d68f1a45615e9ce6e024630ab17e2bd9ef08a598eb7bbf6b73e6b85841d3",
         intel: "c2879ef2ad0d41586bf6e896d4d9af10c4cc1fccbf5feb4d0dc07410be9c8f9a"

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
