cask "qlcommonmark" do
  version "1.1"
  sha256 "7778fae360f844fc17b17a4d5f8d3a01db811b0f78e174b70bea4410de2b12c7"

  url "https://github.com/digitalmoksha/QLCommonMark/releases/download/v#{version}/QLCommonMark.qlgenerator.zip"
  appcast "https://github.com/digitalmoksha/QLCommonMark/releases.atom"
  name "QLCommonMark"
  homepage "https://github.com/digitalmoksha/QLCommonMark/"

  qlplugin "QLCommonMark.qlgenerator"
end
