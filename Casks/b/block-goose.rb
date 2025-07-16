cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.37"
  sha256 arm:   "a790ecdb00ddeb079826d8268c13632b02ceb072c6e3196217d966f0a2a42840",
         intel: "6b1ae31d949aa5a0f591f9d69501705a28bf2162b504d54fc9bb640298c67543"

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
