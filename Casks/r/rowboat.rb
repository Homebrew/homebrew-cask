cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "a2ea33134b579cfd55559b7ff3981795a13ae334f0ccbe2d5054809503ec23f3",
         intel: "c3c54a973265f6dbcd304ffe6e2e621e2ff6d7d4dde9c163ec22f3464bca1ab3"

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
