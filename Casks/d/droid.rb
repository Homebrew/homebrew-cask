cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.149.0"
  sha256 arm:   "e64ddff16f64d8cfa6d5e9a0aad80789b3723b6dc4247e53d1d5dd5bed9c680d",
         intel: "7af4daae971f3e6f2ad3b5ee048a42fd5df5f84a95d88f4d5d2c1252c4417aac"

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
