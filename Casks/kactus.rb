cask "kactus" do
  version "0.3.31"
  sha256 "55c81ba037559fcaf36422ebcac1574bccc1d7eb29806ac10692e4f0b4ea8119"

  # github.com/kactus-io/kactus/ was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast "https://github.com/kactus-io/kactus/releases.atom"
  name "Kactus"
  desc "True version control tool for designers"
  homepage "https://kactus.io/"

  depends_on cask: "sketch"

  app "Kactus.app"
end
