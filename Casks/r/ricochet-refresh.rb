cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.34"
  sha256 arm:   "fee6cee867f16cf3557dd5da82db90b0691f8a9f9518ae69accb0d832e3433ab",
         intel: "0214181045c967d18ce7ba1af1861e3ed107659d375f3a28d9b97a33b15a6222"

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
