cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.7.7"
  sha256 arm:   "cd5287c74b254a29cb0fb9df7d6a64ec88e2ea6054c399363f5cc470a64c5c36",
         intel: "1160da3301a316e99f66f366adcabc4ef2b7dfa5eb0bcff7b56f99b7ff036a93"

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
