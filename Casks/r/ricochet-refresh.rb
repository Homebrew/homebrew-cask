cask "ricochet-refresh" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.44"
  sha256 arm:   "dde59f2f4caadd7522fe41151fcd95a851502521fdf2bfced65b48d93da140c7",
         intel: "234f73b2648b8d0e95f79c1f96517850cb202b530f3f7db8f803bae6ded07c23"

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
