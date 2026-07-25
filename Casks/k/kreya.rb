cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.20.3"
  sha256 arm:   "a4956ddfcaf2b62f3c7cd44b48f7fcc729d9d27623d3072bb1aae26ea478ac86",
         intel: "e6d25ff114f9bfdddcff9df083f2c4a2fbe68481b03c8982cbf1b0e10f5fa5de"

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
