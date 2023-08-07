cask "oak9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "0.11.27"
  sha256 "0b6fa7e013e0495a793e23c522696763f308d4262ef1c2382c69302fea8fabf6"

  url "https://github.com/oak9io/oak9.cli-public/raw/master/binaries/iac-mac_os-#{version}.zip",
      verified: "github.com/oak9io/oak9.cli-public/"
  name "oak9 CLI"
  desc "Component of oak9's security compliance SaaS product"
  homepage "https://oak9.io/"

  binary "oak9"

  zap trash: "./oak9"
end
