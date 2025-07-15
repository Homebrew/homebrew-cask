cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.36"
  sha256 arm:   "9fcced800f0c2ebe86ad7bd8dd0eddb7a5a01715e18c4d41adc3e3cf6bb6b7eb",
         intel: "b0b564e0907afcbab63f993f51fae005c4ec4b714c0bd08f3d1bc3cc15b52c4c"

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
