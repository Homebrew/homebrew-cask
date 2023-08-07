cask "sparkplate" do
  version "1.0.0"
  sha256 "25d54d9202e23e88bfb109f964078da2be7b998b7d08ad6a4ee349b734c18d81"

  url "https://github.com/GreenfireInc/homebrew-sparkplate/releases/download/v#{version}/Sparkplate.zip"
  name "sparkplate"
  desc "Features a test page for resolving human readable domains to crypto addresses"
  homepage "https://github.com/GreenfireInc/Sparkplate.Vue"

  app "Sparkplate.app"
end
