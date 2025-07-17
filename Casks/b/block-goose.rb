cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.1.1"
  sha256 arm:   "acf670f9658a3a5a5f98f9cda1fe99f52e42b2d1b2829878ee2a9614c4e5ccb1",
         intel: "7c964c55ec3ce7371b933e2f6e2f8ff4c1f3e687b3aabdfc9ae53a70c62ae154"

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
