cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.38"
  sha256 arm:   "030c31c5cb19b87404bec50e3cb265d96b8b604f71233f73e5d0bb7157b4ad34",
         intel: "f0223feb08351792e9f4ccf779dfca0c58dc065cc46ae9623b424d0aea180f87"

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
