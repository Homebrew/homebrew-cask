cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.96.0"
  sha256 arm:   "2158492f0ad4e4f3c031acebf6d048a9d03fe79c2d5ee2ac475fb414703a2fbb",
         intel: "f9851c9b3b39fb8f8232c0a885ee810d0617b35bdb3b23f489865a00dcafd9db"

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
