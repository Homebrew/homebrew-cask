cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.206.0"
  sha256 arm:   "6125febabc5fafc08c282460580812efeadd20e3d602206b3287447465a74276",
         intel: "79e7cfc4681d55cf30a2e47442504b311af6e4a1909d84aad252b7f2a55f01ae"

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
