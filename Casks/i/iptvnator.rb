cask "iptvnator" do
  arch arm: "arm64", intel: "x64"

  version "0.24.0"
  sha256 arm:   "29b9ff05e5f4eda4a1e44bb66dd0d46d9b8cc726310475c09c9334ba1451faf1",
         intel: "f1e0857f3d6b8c03b36a0ce6ccd0a4a138fb4d9eebdfcf6f2021debb325a9fb2"

  url "https://github.com/4gray/iptvnator/releases/download/v#{version}/iptvnator-#{version}-mac-#{arch}.dmg"
  name "IPTVnator"
  desc "Open Source m3u, m3u8 player"
  homepage "https://github.com/4gray/iptvnator"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "IPTVnator.app"

  zap trash: [
    "~/Library/Application Support/iptvnator",
    "~/Library/Preferences/com.electron.iptvnator.plist",
    "~/Library/Saved Application State/com.electron.iptvnator.savedState",
  ]
end
