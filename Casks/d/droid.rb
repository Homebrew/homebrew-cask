cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.135.0"
  sha256 arm:   "8d85e7ce996ecf717ca4b00df6f43b945c4501fe370c58ed6d69a69266c4a72a",
         intel: "304a84be1c53951a5f4754bf2ba95d3ceaa2b701d9de63c73ef6f0f30511ae77"

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
