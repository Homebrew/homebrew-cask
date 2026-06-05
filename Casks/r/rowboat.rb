cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.5.4"
  sha256 arm:   "d79f845c83483dcdf16040b537e4bb27670c8043f4af89bb98465f25f581e317",
         intel: "ae045355383f1e8c0bced7788ac1dbc4785efd81c160bf9c8547176d0f8d57f8"

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
