cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.22.0"
  sha256 arm:   "a6069376dc349d0c15285537beea30de0f4c03dacfef3b6458ea7607e9e2ba52",
         intel: "c27404e6d5f9b510c7b4be5a881e27b4fcb314e6c956d1e239ca06086e5c5325"

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
