cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.3.1"
  sha256 arm:   "ff758f5912f0e5b5168b0442ac04cf83e381bb36886e82d677038227a2f7df06",
         intel: "bcc918a49606de476c70cd12abe5f323681141350d987595fb1e5955f00dfe2f"

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
