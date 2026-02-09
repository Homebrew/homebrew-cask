cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.13.0"
  sha256 arm:   "346b4522cc188f9992f2bc82d23953479614330c2e5ee170b21964028589a97c",
         intel: "15a82f56b22bf6f57236d18956130a1e277ccec39dae2a21529b3ab90faab99a"

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
