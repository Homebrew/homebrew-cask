cask "kactus" do
  version "0.3.29"
  sha256 "3c73cbc8cfac4de8b0526bf677d962ce1bdb72e11bf0cce2fe3fc7e7ae2fc909"

  # github.com/kactus-io/kactus/ was verified as official when first introduced to the cask
  url "https://github.com/kactus-io/kactus/releases/download/v#{version}/Kactus-macos.zip"
  appcast "https://github.com/kactus-io/kactus/releases.atom"
  name "Kactus"
  desc "True version control tool for designers"
  homepage "https://kactus.io/"

  depends_on cask: "sketch"

  app "Kactus.app"
end
