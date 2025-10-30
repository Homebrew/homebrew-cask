cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.22.6"
  sha256 arm:   "01f15489977a770efe4a6cf2d6472bdc23fc619721d13f2fa2f1bb795cffe496",
         intel: "de24dbc13e654ad36026cd8654b7f70d118899dcea3fb89a5b068c8667fd5b65"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  binary "droid"

  # No zap stanza required
end
