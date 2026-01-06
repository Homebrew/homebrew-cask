cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.42.2"
  sha256 arm:   "e89d61c953839248bd4572ecc0603c888329f19a1af2920abf6b434ae6e7c7b8",
         intel: "9fee2a07f134fe3b1e24c4ec0818db3e30ba999c88e80ce5c510751fc8792474"

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
