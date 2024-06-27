cask "explorer" do
  version "1.104"
  sha256 "fcf3ec43ab2dff7f9e734192d3d327eebce80240007c4848b433f5d0f6ae8605"

  url "https://github.com/jfbouzereau/explorer/releases/download/#{version}/Explorer-darwin-x64.zip"
  name "Explorer"
  desc "Data Explorer"
  homepage "https://github.com/jfbouzereau/explorer"

  app "Explorer-darwin-x64.app"

  zap trash: [
    "~/Library/Application Support/Explorer",
    "~/Library/Caches/Explorer",
  ]

  caveats do
    requires_rosetta
  end
end
