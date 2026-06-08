cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.20.0"
  sha256 arm:   "e724a65f672fbe6f661c7b3222ae7016758898e808e98fbead6185518d0639c4",
         intel: "eef564eb97ce6f12a7d7ae88d9c3808cb9c9566f84bd6dd4738ee1269396a996"

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
