cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.56.2"
  sha256 arm:   "5d5abd439df370c7c5e8b529327e7d3444e524948f123012bc58c1ad5afb53df",
         intel: "fdda28bbed7475f9eebec48005e5d76a93883c6555d7a9768f485b2d6a4203aa"

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
