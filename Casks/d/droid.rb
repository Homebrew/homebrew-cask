cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.42.1"
  sha256 arm:   "e9642899365fc198cf5d13193d3db333a83914162c9b1f378c7e8ba287aa7930",
         intel: "bef380af41bdfa65fac82cf0325a7abc52339a4e333de5e79def52cf0ddd3d95"

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
