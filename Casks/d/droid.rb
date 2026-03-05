cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.68.0"
  sha256 arm:   "20f2b34e3ae40cd15dceb2814db0daea8f31ec3dba922d8922861278e7032f94",
         intel: "ffc0a911c051a5fd9ff3ef221941ec45ad72ebad7d9cd15ab208076a59b4843f"

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
