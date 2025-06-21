cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.17.0"
  sha256 arm:   "947eace5f26c7ce0a895a1ed04a2f8222603e165a63c0c459eefb6a1bc4bc5bc",
         intel: "826a7018e2c520e7a3cfab2a03827c9170dc1cbdabdced0e42f7f9c3c0763d28"

  url "https://stable-downloads.kreya.app/#{version}/Kreya-osx-#{arch}.zip"
  name "Kreya"
  desc "GUI Client for interacting with gRPC, REST and WebSocket services"
  homepage "https://kreya.app/"

  livecheck do
    url "https://kreya.app/docs/release-notes/"
    regex(/(\d+(?:\.\d+)+)\s\(\d{4}-\d{2}-\d{2}\)/i)
  end

  app "Kreya.app"

  zap trash: "~/Library/Caches/app.kreya"
end
