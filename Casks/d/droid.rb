cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.27.4"
  sha256 arm:   "3312e1013cadeabddee3784b65b7513d4ae4da3ffcfbd579b02ac00e8ddecafa",
         intel: "46de65d6e935228622e45ae3cf75c5d5ae01f8c97a300b4267aced4dca72dde5"

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
