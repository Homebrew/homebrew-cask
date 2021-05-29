cask "ksnip" do
  version "1.9.0"
  sha256 "e1afd29e4b1a7e51ab3b84eca386e27ccf4decaf269751d1031aab25e4d506eb"

  url "https://github.com/ksnip/ksnip/releases/download/v#{version}/ksnip-#{version}.dmg"
  name "ksnip"
  desc "Screenshot and annotation tool"
  homepage "https://github.com/ksnip/ksnip"

  app "ksnip.app"
end
