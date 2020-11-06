cask "gingko" do
  version "2.4.15"
  sha256 "bb1367b0a07a80872be253eda0519ec801e0b96b04d59c5bff3f825cf9e380c4"

  # github.com/gingko/client/ was verified as official when first introduced to the cask
  url "https://github.com/gingko/client/releases/download/v#{version}/Gingko-#{version}-mac.zip"
  appcast "https://github.com/gingko/client/releases.atom"
  name "Gingko"
  desc "Word processor that shows structure and content"
  homepage "https://gingko.io/"

  app "Gingko.app"

  zap trash: "~/Library/Application Support/Gingko"
end
