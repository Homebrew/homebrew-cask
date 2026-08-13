cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.195.0"
  sha256 arm:   "baef33d1ec0c2b96f753a633a16855af61fb4b331138f7274266a358bc9a2a23",
         intel: "761370d31f6ab47d8cd85b95b96c15a0fdb290fb2d481bb5ae91cad02b2cdc15"

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
