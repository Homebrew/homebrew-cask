cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.168.2"
  sha256 arm:   "ccb236a0a59a12b0c6a22f6b16d812f7e3c5cd5404f1fe58e4a5bbc81a5d3743",
         intel: "360215fa1831d853f5e7cbf675c50dbb04137b48e072c906d1488c3d603efb1b"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
