cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.23"
  sha256 arm:   "58e7e735a8dc4dfdd4bd0d1c8a6c89bce4767d89862604fb86c3860f43eec316",
         intel: "69dcae7bc60a0afb499a3260da29451b57d288161df8d7c546e248bcd216a65b"

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
