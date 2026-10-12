cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.238.0"
  sha256 arm:   "f7e94ff10eda09b0d3140b258899af72aabc136634413e2f62a73a92e40f2afc",
         intel: "d980089e7fc34f586b71e4dd27170f0b4d4a681ff0393b0040fda73899c98c97"

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
