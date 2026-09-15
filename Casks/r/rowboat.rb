cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "1.0.1"
  sha256 arm:   "8814586d155637bf6dff016f0d2234ae00c816f586e3b1de68ca8412bf69dd5d",
         intel: "dc863f257847c8cf9ddd5173b35642841e4d475dc3a41d62b81cf885154e4546"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip"
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
