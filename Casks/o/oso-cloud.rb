cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.25.0"
  sha256 arm:   "9d6bc6b2ba4406672dec6597e92a2a6ee7b5f9369e940ff21a2927f488b2436c",
         intel: "f6bed14abff0121cb4398c36fe770ee87f6c03f734ab35af158f80b82863afaa"

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
