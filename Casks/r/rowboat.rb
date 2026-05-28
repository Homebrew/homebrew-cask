cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "0e5ced90186467ad8a03607667e6c060e603c93fd2ee8b8b06370961151c1b3e",
         intel: "4ddf8a7e877b4dc2e9aca36586a04e9e70e6f7a5b28e0ffe06369610e02819f8"

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
