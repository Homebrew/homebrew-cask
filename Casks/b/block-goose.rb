cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.16"
  sha256 arm:   "9fdd23a81dce84294968094a4ce80753ad6837f2b0dc4819de6c256166a94d9d",
         intel: "a84acf08551babc28817d54dc80d0b6cb8149422b17988c3f97c205a8c041b12"

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
