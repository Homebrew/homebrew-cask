cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.11.0"
  sha256 arm:   "751cf5572e0724e9f29b130ceaa9d556eb2bb5b43e897ccfbb1d666112642d79",
         intel: "cd932c3dc5f14ca3898c1b70620005c43469dff50113a3938c2f1541c814b37f"

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
