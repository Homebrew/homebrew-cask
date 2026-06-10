cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.144.1"
  sha256 arm:   "807f7b6d4ea5bdee48a3becc7774e31494686c3ace870aadec68a70718280095",
         intel: "4dab82969203a23d20ac36670902262b1b20a5f732cee2613838a38d3a833171"

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
