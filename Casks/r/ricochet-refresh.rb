cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.30"
  sha256 arm:   "54422e26ef97c701de0c71b5236f3263580f5213e52293ac6e577f7f042954ee",
         intel: "c7263d29f833d308d82ee4b1cf9301da8e7217d08b300ea9d2bf99c9d774234f"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-#{arch}.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[a-z]?)(?:[._-]release)?$/i)
    strategy :github_latest
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
