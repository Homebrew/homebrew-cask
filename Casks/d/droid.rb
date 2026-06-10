cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.144.2"
  sha256 arm:   "775d4a5424995ddd9b2288178c7537a32f885fb448184f06297a992aaadd14b5",
         intel: "7176d06189cf6400235405d420409213f76872a547176fccdd3aad7b7639de32"

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
