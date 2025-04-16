cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.18"
  sha256 arm:   "2bba7d44e333db86a63594b96059cab5e9b6b3ec2d1ee43a44301384111366c8",
         intel: "b6896a8ef65d0317740a1bab5a526214d8e3af8afa64df7a17a3252c44d76632"

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
