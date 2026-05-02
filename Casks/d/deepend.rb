cask "deepend" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "1b2fb55a2f34024ee03a7448570d7ac00a2582d4204112beb7713bdd6a90a478",
         intel: "b586708aa0788410aed9e235befabc8ff2392d7332e1202359fe9265ce23424b"

  url "https://github.com/deepen-stha/deepend-releases/releases/download/v#{version}/Deepend_#{version}_#{arch}.dmg",
      verified: "github.com/deepen-stha/deepend-releases/"
  name "Deepend"
  desc "Developer utilities for JSON, text, PDF, API, and images, fully offline"
  homepage "https://github.com/deepen-stha/deepend-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Deepend.app"

  zap trash: [
    "~/Library/Application Support/com.deepend.app",
    "~/Library/Caches/com.deepend.app",
    "~/Library/HTTPStorages/com.deepend.app",
    "~/Library/Preferences/com.deepend.app.plist",
    "~/Library/Saved Application State/com.deepend.app.savedState",
    "~/Library/WebKit/com.deepend.app",
  ]
end
