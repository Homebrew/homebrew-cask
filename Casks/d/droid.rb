cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.161.0"
  sha256 arm:   "dd8a825fc3b0980bcbbb41d7f505af56771af2e9b64c7f32894066164a8faf68",
         intel: "54acfa6ba940484d871aa5d2e9175d3c0920afe47ce75d66840d89189c802ace"

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
