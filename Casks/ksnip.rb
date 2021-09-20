cask "ksnip" do
  version "1.9.1"
  sha256 "97f4d1e3e1016701748698800780729948df4cb60f5a251b2c914feb96dd7121"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  name "ksnip"
  desc "Screenshot and annotation tool"
  homepage "https://github.com/ksnip/ksnip"

  app "ksnip.app"
end
