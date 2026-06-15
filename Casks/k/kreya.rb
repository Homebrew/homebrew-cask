cask "kreya" do
  arch arm: "arm64", intel: "x64"

  version "1.20.2"
  sha256 arm:   "f138f3f354f56f3dfa3054bc87c93c8a9a03bed3f0b11c6f2139490b09f43737",
         intel: "cd4b0fc65453237b8b7cc66844f4e51e1af68360c86b2d975c4ff5d732c85bf0"

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
