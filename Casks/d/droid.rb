cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.146.0"
  sha256 arm:   "8eb4249d62df9564f9ba8ec2614cff0f5c831684d1ee91112d941a048b5ddb18",
         intel: "c0f517eafb66c1a03c042210d7c26e22d338a0eaa1e823d58baa1057a23e9a6f"

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
