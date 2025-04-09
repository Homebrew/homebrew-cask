cask "oso-cloud" do
  arch arm: "arm64", intel: "x86_64"

  version "0.28.1"
  sha256 arm:   "6adc1d27e5f3c476724bf856f6f89dfb99368cee00345d5abd24adb1575bb0f8",
         intel: "049886a40702e1ba01a357756f368619ad03eaf308d0c1d0894c25a1e59c914f"

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
