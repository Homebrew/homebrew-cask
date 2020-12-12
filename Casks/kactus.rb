cask "kactus" do
  version "0.3.32"
  sha256 "beb91b62c02ae1850a645b7d339b2a03850d0d7ae226ef3688a5e0185fe76c0b"

  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip",
      verified: "github.com/kactus-io/kactus/"
  appcast "https://github.com/kactus-io/kactus/releases.atom"
  name "Kactus"
  desc "True version control tool for designers"
  homepage "https://kactus.io/"

  depends_on cask: "sketch"

  app "Kactus.app"
end
