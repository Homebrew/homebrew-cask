cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.77.0"
  sha256 arm:   "bf6f23f26bfbb53c845d2501e64101d11f954fbc413ad236d05794dc83b191ff",
         intel: "44199a260bb9033e0c5db42282449b79d1f37716d01b64c1da89cf86a97161c2"

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
