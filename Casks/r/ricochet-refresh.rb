cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.37"
  sha256 arm:   "5fe99372a0ab348dfb5bef4a30fc6d31c02992ead145093d9791c266950c51a5",
         intel: "0136d7f9a5b5386a809646bd6c3d71516208ded4fd2c4c94c1ca2b852e5c282a"

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

  # The container is incorrectly detected as a generic archive
  container type: :dmg

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
