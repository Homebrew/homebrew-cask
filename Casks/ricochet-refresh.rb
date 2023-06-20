cask "ricochet-refresh" do
  version "3.0.16"
  sha256 "f85a31980d88dc5e23d67d5d0c3f5da70b6d96f60ba288230cf5d7cc08bf675a"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-x86_64.dmg",
      verified: "github.com/blueprint-freespeech/ricochet-refresh/"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url "https://github.com/blueprint-freespeech/ricochet-refresh/releases"
    regex(/v?(\d+(?:\.\d+)+)/i)
    strategy :github_latest
  end

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
