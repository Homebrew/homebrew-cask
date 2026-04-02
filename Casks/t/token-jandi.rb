cask "token-jandi" do
  version "0.4.0"
  sha256 "0afeff9c31062c2bfa28390c2caede6e61f56067113f1d18ba17d60d65d33290"

  url "https://github.com/wheon06/token-jandi/releases/download/v#{version}/Token.Jandi-#{version}.zip"
  name "Token Jandi"
  desc "AI token usage heatmap for macOS menu bar"
  homepage "https://github.com/wheon06/token-jandi"

  depends_on macos: ">= :sonoma"

  app "Token Jandi.app"

  zap trash: [
    "~/Library/Preferences/com.heeyeonlee.token-jandi.plist",
  ]
end
