cask "qtox" do
  version "1.17.4"
  sha256 "e049e2e359a0a711cf5957a5d9ba20c482cd5cff97048a1ed792f5394d3c61c8"

  url "https://github.com/qTox/qTox/releases/download/v#{version}/qTox.dmg",
      verified: "github.com/qTox/qTox/"
  name "qTox"
  desc "Instant messaging and video conferencing app"
  homepage "https://qtox.github.io/"

  app "qTox.app"
end
