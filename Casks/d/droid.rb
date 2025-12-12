cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.36.1"
  sha256 arm:   "c97b0506a0c6c1c396e64eaed795f68a7057964d6d41677da55a799e246aa8fd",
         intel: "88005f7745db851e6496ba536d769e05c0e9da5d42174cb66860354dffad2164"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  # No zap stanza required
end
