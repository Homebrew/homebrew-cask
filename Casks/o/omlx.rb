cask "omlx" do
  version "0.4.4"
  sha256 "6df56b115426f7890a0c734ff81d89e55e4859dfca21543e124041321f5558fd"

  url "https://github.com/jundot/omlx/releases/download/v#{version}/oMLX-#{version}-macos26-27.dmg",
      verified: "github.com/jundot/omlx/"
  name "oMLX"
  desc "LLM inference server with continuous batching & SSD caching for Apple Silicon"
  homepage "https://omlx.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia
  depends_on arch: :arm64

  app "oMLX.app"

  zap trash: [
    "~/.omlx",
    "~/Library/Application Support/oMLX",
    "~/Library/Preferences/ai.omlx.plist",
  ]
end
