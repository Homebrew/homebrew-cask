cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.12.1"
  sha256 arm:   "87b28b77b0bfba75e63102091d4e8795f3bccc7f6cf90262dc1df1319dd5b60d",
         intel: "082f5d8646d544497e3c0e925e811ae8e45a353398f09190efd90be845c0c72e"

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
