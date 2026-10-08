cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.236.0"
  sha256 arm:   "b3c89d6d7b64f44e78dc7d1200db334dd7f2d9ba1058bc910a5f5f27d53130e2",
         intel: "8c6a820d2df85cc19196dbc9eff1b37ba5821034a7c8cbf8f7f88662e2181476"

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
