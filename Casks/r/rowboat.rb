cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "0.2.1"
  sha256 arm:   "a928a86c43296cee4e1b8151fe200c5be4b1abbdefdc9dd6c34d2085970be277",
         intel: "6a1d3adfc91b0c08bc05de4d28939eb669a65afb328a6b3803d7476ef5762536"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://github.com/rowboatlabs/rowboat"

  depends_on macos: ">= :monterey"

  app "rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
