cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.7.0"
  sha256 arm:   "d182a1ad6f0b25702c0f127f79f91925015603990c9fca8fe69981a3469fbcd8",
         intel: "dbf512020545a534351a553b96f079d5ccc38dece7fe049cd7975d111f905d19"

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
