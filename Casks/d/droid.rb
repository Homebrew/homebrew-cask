cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.44.0"
  sha256 arm:   "fa07299cdfabd7c1e7558406160e9a037ec45c72053649aa3d7cb5b00f26efcd",
         intel: "de77ebeaafc6fd5581612caf80dc3087b90aebe329f764e2fee97f7710d45bb4"

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
