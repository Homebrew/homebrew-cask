cask "ksnip" do
  version "1.9.2"
  sha256 "455ecb78875fcd70ca41b77688a727a27cc623f0c23cbe83cf8c31ddc56d5258"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  name "ksnip"
  desc "Screenshot and annotation tool"
  homepage "https://github.com/ksnip/ksnip"

  app "ksnip.app"
end
