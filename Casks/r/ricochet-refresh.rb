cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.23"
  sha256 arm:   "5c25509c58861e2d07909a12ef0c9db6473d0472174f962236744e43beccd53b",
         intel: "731da9c8058d078903f97d5c60ffb4de6e16654da53d731e7604906ca9683e64"

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
