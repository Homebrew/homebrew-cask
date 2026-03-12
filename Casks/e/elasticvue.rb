cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.14.0"
  sha256 arm:   "865c29f0032cc4f7766022ab9c498a68da8842aa8da7f95bca4c129ad0d698ab",
         intel: "b6dfb84b6c23f5a80f66d4fb0bc503d3529940af38bc668e33f0da2a36e38c51"

  url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_#{arch}.dmg",
      verified: "github.com/cars10/elasticvue/"
  name "Elasticvue"
  desc "Elasticsearch GUI"
  homepage "https://elasticvue.com/"

  auto_updates true

  app "elasticvue.app"

  zap trash: [
    "~/Library/Application Support/com.elasticvue.app",
    "~/Library/Caches/com.elasticvue.app",
    "~/Library/Caches/elasticvue",
    "~/Library/Preferences/elasticvue.plist",
    "~/Library/Saved Application State/com.elasticvue.app.savedState",
    "~/Library/WebKit/com.elasticvue.app",
    "~/Library/WebKit/elasticvue",
  ]
end
