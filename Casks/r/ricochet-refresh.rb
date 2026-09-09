cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.45"
  sha256 arm:   "a5ef666b2a60718cf00d1823f7fbd09249648de9e983594e2649572f3b197995",
         intel: "284c32bb41ff7a8cf15058f792fe857f01072439d93538911ef64a53192c0230"

  url "https://github.com/blueprint-freespeech/ricochet-refresh/releases/download/v#{version}-release/ricochet-refresh-#{version}-macos-#{arch}.dmg"
  name "Ricochet Refresh"
  desc "Private and anonymous instant messaging over tor"
  homepage "https://www.ricochetrefresh.net/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+[a-z]?)(?:[._-]release)?$/i)
    strategy :github_latest
  end

  # The container is incorrectly detected as a generic archive
  depends_on :macos
  container type: :dmg

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
