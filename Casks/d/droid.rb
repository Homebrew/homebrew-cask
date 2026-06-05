cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.141.1"
  sha256 arm:   "e479247d073e4a2af647f345f122ddb6e7a50ae4a8daca9a91fbd933f70c6cd7",
         intel: "e12a812e8f3274af7e017c576a751fed9c0e6981b259c8d00ce818ab5944f732"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
