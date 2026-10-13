cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.240.1"
  sha256 arm:   "0394671d993a31df13e6a107271bd306dea7e69345ee7aac7577baf78f9da2c0",
         intel: "1a474b12212962670f64439dd2ec9e5c1527fa11a3c319e089990dc3b7fe5bcc"

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
