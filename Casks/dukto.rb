cask "dukto" do
  version "R6"
  sha256 "86f06ca92a28b5835cb3eaadfb09897f581a5da3fb8ee8246897b1bf4ee7348a"

  url "https://downloads.sourceforge.net/dukto/Dukto#{version}-OSX.dmg",
      verified: "sourceforge.net/dukto/"
  appcast "https://sourceforge.net/projects/dukto/rss"
  name "Dukto"
  homepage "https://www.msec.it/blog/?page_id=11"

  app "Dukto.app"
end
