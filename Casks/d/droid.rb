cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.103.1"
  sha256 arm:   "6f3f820e95898bec05d1319aaa717df61306d4f506dbf1e4280176eecc4d2703",
         intel: "5eaf0cebf2abd405ab54c627e807f1af6c9edd46d0cc6f2e0dadc47e36a06643"

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
