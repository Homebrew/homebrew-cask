cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.21"
  sha256 arm:   "71d36a1100aab065ddb19ba57fd152388b055e5d5bce6e70e47372eee0bee645",
         intel: "3d2d5f5cda526b03be7a8e29c104c560a22a779339dd1713919c343cd4f73aeb"

  url "https://github.com/block/goose/releases/download/v#{version}/Goose#{arch}.zip",
      verified: "github.com/block/goose/"
  name "Goose"
  desc "Open source, extensible AI agent that goes beyond code suggestions"
  homepage "https://block.github.io/goose/"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: ">= :big_sur"

  app "Goose.app"

  zap trash: "~/Library/Application Support/Goose"
end
