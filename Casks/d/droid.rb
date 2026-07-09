cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.168.1"
  sha256 arm:   "229bf6435ca43c08d33412c61f732060d8400aa27107f6e01ad6b18fd6c08c67",
         intel: "69eb8aab012fa58d7bb17d6d23829f2867b3568e244da7aef19847963f4dfc7e"

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
