cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.17"
  sha256 arm:   "be6ba027f3fe64fb25e1339a7e43e5b985ba5e1b5d4be90c6cc8d4c656c6f64f",
         intel: "502af0112772f9f98a7e3efdad2720b712924c70fb30a4b7cbac2ce32276ba61"

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
