cask "motrix" do
  arch arm: "-arm64"

  version "1.8.19"
  sha256 arm:   "d73f4d69f3597ad8f98b821aa0fb58ba964bf85061b4a13f00edcb3618001c0e",
         intel: "b644cc83aa98224147ef2942fd49ecfc8cdcebfce9616550fa35caa6850c4178"

  url "https://github.com/agalwood/Motrix/releases/download/v#{version}/Motrix-#{version}#{arch}.dmg",
      verified: "github.com/agalwood/Motrix/"
  name "Motrix"
  desc "Open-source download manager"
  homepage "https://motrix.app/"

  # A tag using the stable version format is sometimes marked as "Pre-release"
  # on the GitHub releases page, so we have to use the `GithubLatest` strategy.
  livecheck do
    url :url
    strategy :github_latest
  end

  app "Motrix.app"

  zap trash: [
    "~/Library/Application Support/Motrix",
    "~/Library/Caches/net.agalwood.Motrix",
    "~/Library/Logs/Motrix",
    "~/Library/Preferences/net.agalwood.Motrix.plist",
    "~/Library/Saved Application State/net.agalwood.Motrix.savedState",
  ]
end
