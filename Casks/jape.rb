cask "jape" do
  version "9.0.9"
  sha256 "2e6a0b095dd563186e523fe8dd14ef75a17e387a53383e374d84bce9cf4ee450"

  # github.com/RBornat/jape/ was verified as official when first introduced to the cask
  url "https://github.com/RBornat/jape/releases/download/#{version}/jape_#{version}.dmg"
  appcast "https://github.com/RBornat/jape/releases.atom"
  name "Jape"
  desc "Configurable proof calculator"
  homepage "http://www.japeforall.org.uk/"

  app "Jape.app"
end
