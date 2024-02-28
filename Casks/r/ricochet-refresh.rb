cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.20"
  sha256 arm:   "38989497d2904ca9c5c3329bf7c493e0449b8f0f2b6cfb55919f8553966d8be2",
         intel: "e615734cd4e0e203cfad1801fcd3243cd81483ff4adad7fbc9852e1902e63cd7"

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
