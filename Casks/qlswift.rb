cask "qlswift" do
  version "0.0.2"
  sha256 "4407b8e25320a339032bf97cf7bc2a0d62bdf5f45c889e78ee757236ba600408"

  url "https://github.com/lexrus/QLSwift/releases/download/#{version}/QLSwift.qlgenerator.zip"
  appcast "https://github.com/lexrus/QLSwift/releases.atom"
  name "QLSwift"
  homepage "https://github.com/lexrus/QLSwift"

  qlplugin "QLSwift.qlgenerator"
end
