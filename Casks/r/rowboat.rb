cask "rowboat" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "0.2.1"
  sha256 arm:          "a928a86c43296cee4e1b8151fe200c5be4b1abbdefdc9dd6c34d2085970be277",
         x86_64:       "6a1d3adfc91b0c08bc05de4d28939eb669a65afb328a6b3803d7476ef5762536",
         arm64_linux:  "2b18a5db0fdf9b1ccb03f207cf47e9117f39e355c73b78be9035a1ac687b022b",
         x86_64_linux: "6e95d2751e9c2a69c85c7d447a87e2865f8942de1e9bf2a45606f26f3f5dd6a6"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-#{os}-#{arch}-#{version}.zip"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://github.com/rowboatlabs/rowboat"

  depends_on macos: ">= :monterey"

  app "rowboat.app"

  zap trash: [
    "~/Library/Application Support/Rowboat",
    "~/.rowboat",
  ]

end
