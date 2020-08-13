cask "redeclipse" do
  version "2.0.0"
  sha256 "7eff1f196f9998d7bb7f26b4c79b596c2512b18a8b8ce16335634defbfcb072e"

  # github.com/redeclipse/base/ was verified as official when first introduced to the cask
  url "https://github.com/redeclipse/base/releases/download/v#{version}/redeclipse_#{version}_mac.tar.bz2"
  appcast "https://github.com/redeclipse/base/releases.atom"
  name "Red Eclipse"
  homepage "https://www.redeclipse.net/"

  app "redeclipse.app"
end
