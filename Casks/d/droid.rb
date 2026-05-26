cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.134.0"
  sha256 arm:   "0d05c507bc37161a39ef252493b4bb2f2b3e8c74a1599398ffe4a4b71ed9eb53",
         intel: "d9388bbf3982a71e78f68461bd6a3d7466011491e39bd41ed5d25691a69e4dd9"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
