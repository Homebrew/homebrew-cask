cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.32"
  sha256 arm:   "356a069c8803ff578b68a88985a7eee7215f7a0d1fa46e2c29363e94de077979",
         intel: "7c7f2fd72daebb54b2d0a3d78eb6fa7fa1a906cb91ced8f03165a1cbcdb7eaf4"

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
