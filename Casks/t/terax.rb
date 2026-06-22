cask "terax" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.1"
  sha256 arm:   "c2f45d7e9334e9537b32540b5442883e3c27bf800f9ca94ffb1addeda944d08a",
         intel: "bd0871eea0912df56859a04e1aa74846a0a16dda9314ea7819a47ab9bebc909f"

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
