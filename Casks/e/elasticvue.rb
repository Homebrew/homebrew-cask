cask "elasticvue" do
  arch arm: "aarch64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "510e33d636256c44b083c324ba854222fe8c0b57dc45008b9ca5c7c9173890eb",
         intel: "a828a15d456d55ebe16c7dbcae611903073768547875b89d811ba2f6d6a91558"

  url "https://github.com/cars10/elasticvue/releases/download/v#{version}/elasticvue_#{version}_#{arch}.dmg"
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
