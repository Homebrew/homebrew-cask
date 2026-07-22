cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.177.0"
  sha256 arm:   "d0e051eb573895837c03c2d45b74951ecc6c4b5cdb624b0aaa2cd7b3638342eb",
         intel: "7644af12777a06a0f4735b7f62c3a5a4b4f2e31f9e90f6fc78198ee734c80db8"

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
