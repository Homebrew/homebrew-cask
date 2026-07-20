cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "9ce9d8f86f06068ce3c14d7e357ca9c1360051c34e143c03868ae79bb5dd1379",
         intel: "c4ed46c37711ccd5b6fc406771376c780a362411302086d3267f31884c01c1f7"

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
