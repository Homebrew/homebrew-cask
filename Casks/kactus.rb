cask "kactus" do
  version "0.3.30"
  sha256 "371463133a41a01b8db89a0c9565fefcf9bd16876ed624db218a37807e2f135d"

  # github.com/kactus-io/kactus/ was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast "https://github.com/kactus-io/kactus/releases.atom"
  name "Kactus"
  desc "True version control tool for designers"
  homepage "https://kactus.io/"

  depends_on cask: "sketch"

  app "Kactus.app"
end
