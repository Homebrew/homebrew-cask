cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.33"
  sha256 arm:   "ce2ae8a879e00a23fd1dce9f43abc98a79b56d47731fc2ab49318a889f5bbeb5",
         intel: "2c17c927022a43899fb45f53fe83e19c83fda95cc61d3a0101e07dc4c3c54e04"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip",
      verified: "github.com/block/goose/"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
