cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.199.0"
  sha256 arm:   "e73a7ae55129d0424caffd802353176bdafd6f99e2ea6bad556323d8eaa72e5c",
         intel: "91d937f161315598fbcdd26e8cd83061d42ad5234a4bea20af20ce45836aea1c"

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
