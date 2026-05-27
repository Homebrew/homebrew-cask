cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "6c5eaddb673f225c66940b4b60d170fda8a05fefdc2ca712070e3b94cc31bac3",
         intel: "44a8c3b77b11acc3ec245a25af3f0475e1c24ffe654c7ab90fccd0ae2b9c5089"

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
