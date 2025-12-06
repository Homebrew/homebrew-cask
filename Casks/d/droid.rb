cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.32.0"
  sha256 arm:   "c767e662be0dabe79df22016a05949369775c9a87c42bfc15522dd053458b1d3",
         intel: "9b4da5e6a308a0b0699e636c08ce06f05926a024691435f0b55688616026768d"

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
