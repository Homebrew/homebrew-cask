cask "oak9" do
  # NOTE: "9" is not a version number, but an intrinsic part of the product name
  version "0.11.24"
  sha256 "a7a872dfebeb6bf72f937fa1e0637a5bdc41968991c5d61bb5b29754e66e0835"

  url "https://github.com/oak9io/oak9.cli-public/raw/master/binaries/iac-mac_os-#{version}.zip",
      verified: "github.com/oak9io/oak9.cli-public/"
  name "oak9 CLI"
  desc "Component of oak9's security compliance SaaS product"
  homepage "https://oak9.io/"

  binary "oak9"

  zap trash: "./oak9"
end
