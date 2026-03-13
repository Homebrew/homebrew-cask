cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.19.1"
  sha256 arm:   "6cffbb376f0fb3c94aa001bc5eec6491f1c1f8fb63b34121edf2656851ae17c9",
         intel: "2be8dfedbddf21ea7df8a6ad649c239d7cea73cd59295226ecacff6c1f2658ed"

  url "https://stable-downloads.kreya.app/#{version}/Kreya-osx-#{arch}.zip"
  name "Kreya"
  desc "GUI Client for interacting with gRPC, REST and WebSocket services"
  homepage "https://kreya.app/"

  livecheck do
    url "https://kreya.app/docs/release-notes/"
    regex(/(\d+(?:\.\d+)+)\s\(\d{4}-\d{2}-\d{2}\)/i)
  end

  depends_on macos: ">= :monterey"

  app "Kreya.app"

  zap trash: "~/Library/Caches/app.kreya"
end
