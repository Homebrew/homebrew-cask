cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.225.1"
  sha256 arm:   "fba1f95c6302dcb7f1938c0d95913441e126d6600eed5423d6ee7004a7e10514",
         intel: "81278a974f5b1d5a8476a8a31297c2f694aa0b2e49e140cf94379c7e230ceb62"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
