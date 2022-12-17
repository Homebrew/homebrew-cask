cask "ricochet-refresh" do
  version "3.0.15"
  sha256 "dcbc9c5656e282d827759a297ab806ddd2cf8a3f5a197f72df3eb770568a8f04"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-x86_64.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url "https://github.com/blueprint-freespeech/ricochet-refresh/releases"
    strategy :github_latest
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)[-"' >]}i)
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
