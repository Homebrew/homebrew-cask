cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.20.1"
  sha256 arm:   "ecd542434ce262eced3a6802918d144f4cec4eb8ab584fe760911e3d2d49664a",
         intel: "b5efaf5332b05e72faa4a5365f65b61574d3893d0d0b875929ba3cf92a38226e"

  url "https://stable-downloads.kreya.app/#{version}/Kreya-osx-#{arch}.zip"
  name "Kreya"
  desc "GUI Client for interacting with gRPC, REST and WebSocket services"
  homepage "https://kreya.app/"

  livecheck do
    url "https://kreya.app/docs/release-notes/"
    regex(/(\d+(?:\.\d+)+)\s\(\d{4}-\d{2}-\d{2}\)/i)
  end

  depends_on macos: :ventura

  app "Kreya.app"

  zap trash: "~/Library/Caches/app.kreya"
end
