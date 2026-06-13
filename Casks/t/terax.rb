cask "terax" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.0"
  sha256 arm:   "97cc3861743dd2c78372e387446c291460dfc5911347a2b5287fc96032898a67",
         intel: "6d41ef43c5f37a865ec2f8d2d5b82f484645f7b1a28b73add93d090442cfd3a6"

  url "https://github.com/crynta/terax-ai/releases/download/v#{version}/Terax_#{version}_#{arch}.dmg",
      verified: "github.com/crynta/terax-ai/"
  name "Terax"
  desc "Terminal-first AI-native developer workspace"
  homepage "https://terax.app/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  auto_updates true
  depends_on macos: :ventura

  app "Terax.app"

  zap trash: [
    "~/Library/Application Support/app.crynta.terax",
    "~/Library/Caches/app.crynta.terax",
    "~/Library/Logs/app.crynta.terax",
    "~/Library/WebKit/app.crynta.terax",
  ]
end
