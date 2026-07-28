cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.8.2"
  sha256 arm:   "c7c9f0b7a04a2e79a1ce012f2b7c1535ffed4b72f1630e7adb860f5f279475fa",
         intel: "759c675d93cd00c099b0490b65cfba7aed1e9c31a6a8a135554d52e22ead75fc"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip",
      verified: "github.com/rowboatlabs/rowboat/"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  depends_on macos: :monterey

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
