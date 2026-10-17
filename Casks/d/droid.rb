cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.244.0"
  sha256 arm:   "5fe5530d7d7feb86472786af16c8351495b7aaebca25233054cec18c626ae524",
         intel: "6d4565d2f1d63faf40478691127be88d09f4caa30cfd7d2297b7f83b2f66c902"

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
