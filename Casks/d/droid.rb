cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.127.0"
  sha256 arm:   "ea061f5deb765155d9d17360893b282751a2c0c26fbf8a320f349e82a024627c",
         intel: "000c80ee561145d5d9b1f2878e6713d07cb2dbaf197d4bd57f088ba6da2b3fbc"

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
