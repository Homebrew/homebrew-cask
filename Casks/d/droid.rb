cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.169.0"
  sha256 arm:   "6bbad2bbc6de21bc129ff6a64882ea1c948eb6273df7a9781c2f4332d5a6f2a1",
         intel: "14e5709e6ce39e58531cc6a7f2fd16b6c37bd1078bd7ad87a18cd51a95e331df"

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
