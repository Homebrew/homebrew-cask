cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.5.6"
  sha256 arm:   "db341bd44a24c3abf2043ec34c81170540550812d78b21f6c0d2822b9dfc09fc",
         intel: "fc129042717fb59e4633e216864f2d4aa54b6894b57e3b163af97982483eba16"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
