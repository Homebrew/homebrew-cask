cask "oak9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "0.11.19"
  sha256 "c96ad641f18af3728b33eaacb892ef3dda3a135c47d5691e431395bcd8878fd8"

  url "https://github.com/oak9io/oak9.cli-public/raw/master/binaries/iac-mac_os-#{version}.zip",
      verified: "github.com/oak9io/oak9.cli-public/"
  name "oak9 CLI"
  desc "Component of oak9's security compliance SaaS product"
  homepage "https://oak9.io/"

  binary "oak9"

  zap trash: "./oak9"
end
