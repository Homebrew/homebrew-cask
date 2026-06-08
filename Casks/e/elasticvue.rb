cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.15.0"
  sha256 arm:   "db40979ec2667c9cb3aced573dc4ff33e1f6b4515fb33da6883350ec8e9a0f25",
         intel: "a635d45129043fd0687d70339512e458776a5aa546e4fa3cbd197ed9a136e6da"

  url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_#{arch}.dmg",
      verified: "github.com/cars10/elasticvue/"
  name "Elasticvue"
  desc "Elasticsearch GUI"
  homepage "https://elasticvue.com/"

  auto_updates true
  depends_on :macos

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
