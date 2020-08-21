cask "gingko" do
  version "2.5.0"
  sha256 "52d83d409983b414a0645687de1fa865f0517587039367e7464a0cfa72d0982d"

  # github.com/gingko/client/ was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast "https://github.com/gingko/client/releases.atom"
  name "Gingko"
  homepage "https://gingko.io/"

  app "Gingko.app"

  zap trash: "~/Library/Application Support/Gingko"
end
