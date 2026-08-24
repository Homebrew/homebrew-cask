cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.8.9"
  sha256 arm:   "06f0922fd97a7010fff231b11e5acbf1b28e0241bdb1ba91c7bdaa3fa8078d44",
         intel: "c4327df3cb92fdac7f698a951ece91b313f6bc30679f2e617394a16a3cda6981"

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

  app "Rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
