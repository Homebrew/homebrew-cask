cask "copytranslator" do
  version "9.0.2"
  sha256 "5da337e06e1ac6325627f99a0662042b1d97689613685cc046441d41d6d1f075"

  # github.com/CopyTranslator/CopyTranslator/ was verified as official when first introduced to the cask
  url "https://github.com/CopyTranslator/CopyTranslator/releases/download/v#{version}/copytranslator-#{version}.dmg"
  appcast "https://github.com/CopyTranslator/CopyTranslator/releases.atom"
  name "CopyTranslator"
  desc "Tool that translates text in real-time while copying"
  homepage "https://copytranslator.github.io/"

  depends_on macos: ">= :sierra"

  app "copytranslator.app"
end
