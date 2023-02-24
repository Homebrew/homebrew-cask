cask "oak9cli" do
  version "0.11.16"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/oak9io/oak9.cli-public/raw/master/binaries/iac-mac_os-#{version}.zip",
      verified: "github.com/oak9io/oak9.cli-public/"
  name "oak9 CLI"
  desc "Component of oak9's security compliance SaaS product"
  homepage "https://oak9.io/"

  auto_updates true

  binary "oak9"

  zap trash: "./oak9"
end
