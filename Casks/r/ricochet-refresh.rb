cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.22"
  sha256 arm:   "567c051b95900748875cac032474a5d753c311a7dd76801247503b9f7bc7ac99",
         intel: "fa0cb9e061a12188d534f9dc501b8c77587720bb0e00a77d80ec1628d7f7b9f2"

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
