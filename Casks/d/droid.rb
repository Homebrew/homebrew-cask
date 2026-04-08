cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.96.2"
  sha256 arm:   "c4152065e56218724c0db0da1a8d635ae34410ad4abe4a36207bb0dff5a33d78",
         intel: "d89f9957d30c526347e7ad6690e4f4abb38f205c991c8ea6f1a4e6d2255775d2"

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
