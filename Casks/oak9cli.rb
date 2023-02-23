cask "oak9cli" do
  version "0.11.16"
  sha256 :no_check # required as upstream package is updated in-place

  url "https://github.com/oak9io/oak9.cli-public/blob/master/binaries/iac-mac_os-#{version}.zip"
  name "oak9 CLI"
  desc "Component of oak9's security compliance SaaS product"
  homepage "https://github.com/oak9io/oak9.cli-public/"

  auto_updates true

  binary "oak9"

  zap trash: "./oak9"
end
