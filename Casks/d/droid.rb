cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.204.0"
  sha256 arm:   "6758de645126837391d0c36963f4ae93ddb62077462a6e1bfb438d0dff073f92",
         intel: "eb8bf48d486e5b96bf2fb580d2266d92d662384e254cdda0a58f36283665a9f8"

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
