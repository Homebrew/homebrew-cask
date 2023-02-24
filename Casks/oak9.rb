cask "oak9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "0.11.16"
  sha256 "cef527114243a2d48390f8ed454e56cf83f20135511f4f0eabf3dbed660c8ee2"

  url "https://github.com/oak9io/oak9.cli-public/raw/master/binaries/iac-mac_os-#{version}.zip",
      verified: "github.com/oak9io/oak9.cli-public/"
  name "oak9 CLI"
  desc "Component of oak9's security compliance SaaS product"
  homepage "https://oak9.io/"

  binary "oak9"

  zap trash: "./oak9"
end
