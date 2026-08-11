cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.193.0"
  sha256 arm:   "a36d24c331431d1467696d17ab5632e2bd92a79d3acd9a0ec79e07f743a2bbbd",
         intel: "db183057673905fa0c583c277b0d7b3d9f191c042b56961b4d52ebf3e4a36d5a"

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
