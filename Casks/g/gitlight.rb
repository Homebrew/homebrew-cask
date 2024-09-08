cask "gitlight" do
  arch arm: "aarch64", intel: "x64"

  version "0.17.5"
  sha256 arm:   "11cf26a907520b734b009b91578240b750c7210f8e498fc742c4eca0b87c5995",
         intel: "fd066caa44b37fd81619ca1e3ed9fb3465b00cfd3bddbb938d88d72162805890"

  url "https://github.com/colinlienard/gitlight/releases/download/gitlight-v#{version}/GitLight_#{version}_#{arch}.dmg",
      verified: "github.com/colinlienard/gitlight/"
  name "GitLight"
  desc "Desktop notifications for GitHub & GitLab"
  homepage "https://gitlight.app/"

  depends_on macos: ">= :high_sierra"

  app "GitLight.app"

  zap trash: [
    "~/Library/Application Support/app.gitlight",
    "~/Library/Caches/app.gitlight",
    "~/Library/LaunchAgents/GitLight.plist",
    "~/Library/Preferences/app.gitlight.plist",
    "~/Library/Saved Application State/app.gitlight.savedState",
    "~/Library/WebKit/app.gitlight",
  ]
end
