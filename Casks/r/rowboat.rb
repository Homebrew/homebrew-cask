cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "1.0.2"
  sha256 arm:   "4b7c62e2714f594c9374beb6e9b647bbf64a3e1ea6e5dceed2255f8f519458cd",
         intel: "9ca84376a8362fa125f00b111d2df27dddd572954de8ac62ac1566ce9b9a063f"

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
