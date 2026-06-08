cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.142.0"
  sha256 arm:   "244d1a2ef075993fad8454bba10caf5fc7e777f563f21c8844c46bbf02370124",
         intel: "4138a8e56e8230331ca6f3309f9883200932c8570ee9196d7971fb3819011f01"

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
