cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.49.0"
  sha256 arm:   "b37865c6abe6a4ee8f804a688efc67ebb4ee8cc41bcac7d39eb04184db56bd5b",
         intel: "099ac4276dae37e0935772eb7d0fce6ff615003265c8c8c398d46b5f929f4b30"

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

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
