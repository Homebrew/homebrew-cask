cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.18.0"
  sha256 arm:   "b03ecf4b1147745498e7373d577a5a6165948a88ba728064a98c0e3d8c1eba53",
         intel: "17f4773e06ffd91fd5233332d1f8fcf9357ea4a8efdce8274f941091d78e33e4"

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
