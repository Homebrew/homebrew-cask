cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "f169c7e2dbc7b5e3ef80ebda37748f3b22ba16533b1b31754fe30eb499b9e567",
         intel: "2db8cbb97f40192def84d56f7a77b85d6d163b5f4a046efefe11f28c1cbcd36a"

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
