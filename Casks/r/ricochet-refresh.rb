cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.41"
  sha256 arm:   "dbb475e09cc5fb7c4b27432087de70141c34f2f34881b0873910482bab133a17",
         intel: "bd0a50f7863b900fc7f4f4fa81182bed2d4bb614a36170c5c1aa23d57fcd1e2e"

  on_arm do
    depends_on macos: :big_sur
  end
  on_intel do
    depends_on macos: :catalina
  end

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
  depends_on :macos
  container type: :dmg

  app "Ricochet Refresh.app"

  zap trash: "~/Library/Application Support/Ricochet-Refresh"
end
