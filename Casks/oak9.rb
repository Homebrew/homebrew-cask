cask "oak9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "0.11.17"
  sha256 "fe5a81d28d816fa059a28afbc492ccff74401c5cec1d1dd5be71b18a99eec48f"

  url "https://github.com/oak9io/oak9.cli-public/raw/master/binaries/iac-mac_os-#{version}.zip",
      verified: "github.com/oak9io/oak9.cli-public/"
  name "oak9 CLI"
  desc "Component of oak9's security compliance SaaS product"
  homepage "https://oak9.io/"

  binary "oak9"

  zap trash: "./oak9"
end
