cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.14"
  sha256 arm:   "f692839f2b5d7d2628327198472ae7a443694d67adf922fb74fc194b4a19501d",
         intel: "6edeead84867dbad33aec538efcbac62f2b74113e88a7e4525f049bcef8ae00d"

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
