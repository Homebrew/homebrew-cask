cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.28.2"
  sha256 arm:   "c9b1d9837b63d1dcb44aded1b4823da2076ffbcd67c1bcc03b846042de682db1",
         intel: "128ea69145b55b31d17c53f1ac333006e09bbde9dba3136cebb984afa749c213"

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
