cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.138.0"
  sha256 arm:   "1b69138cae1fa336c246e1d9cc4f2c332a781345d489f3a26230046a0563dd81",
         intel: "d91c2fe2311ab6607c78f87ee84ef61a4dd2aaeb2fbf1ccad3e7f5c6855f68d9"

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
