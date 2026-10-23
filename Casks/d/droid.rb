cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.248.0"
  sha256 arm:   "a2088ce76d3ba52a5fc13975dc01ecbcc9611e989351f1b7442405d8bb30b70a",
         intel: "27d235bbfc58dab61bba429618cd027a6852dcdc79b42f578848c0f3a7ca32ff"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
