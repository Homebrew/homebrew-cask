cask "terax" do
  arch arm: "aarch64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "f7159c016387425467724faad3b4c159d263d410bda62ffb8afe0df444a2e64f",
         intel: "3061d3954dc4629d50c23eafbb883914e97100d4606f68fc47bebb396b1357bf"

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
