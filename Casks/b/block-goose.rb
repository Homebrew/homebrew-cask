cask "block-goose" do
  arch intel: "_intel_mac"

  version "1.0.34"
  sha256 arm:   "f2de603caa23173397e3501caec630f4e7b5ce8b2205bb47a13e1aa3d66e2f6b",
         intel: "dc7642690500d8c104f2548546b0e33777984ac3571c70f0de56fc2238ae7fc5"

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
