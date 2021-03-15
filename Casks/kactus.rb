cask "kactus" do
  version "0.3.34"
  sha256 "0788dd3b96f0b59da610df65d67d81ec5cc35888481255ec3b7dcc6ce32ff064"

  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip",
      verified: "github.com/kactus-io/kactus/"
  appcast "https://github.com/kactus-io/kactus/releases.atom"
  name "Kactus"
  desc "True version control tool for designers"
  homepage "https://kactus.io/"

  depends_on cask: "sketch"

  app "Kactus.app"
end
