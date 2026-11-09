cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.47"
  sha256 arm:   "91b85c216db3b5b47467c28f9c46389b50b1b86fb2a105c8a67d6f921c2ace9f",
         intel: "88fb43651a5a47b32baf6720e12e6e40cf3f4b9b234c31904296ab0e96120f27"

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
