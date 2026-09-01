cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.209.1"
  sha256 arm:   "615e01b8dbbfa69ba474bcf0fa0289769c1b9f5d3816dc0e82931d83c1588c15",
         intel: "5b2f28ec100388d840880f54d197b44b9c4e78cf6475e3ff231e84f940ab0594"

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
