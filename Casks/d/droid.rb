cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.212.1"
  sha256 arm:   "885c25635fc61f475a046ef26bd583b996524cfe091dcd598dbb2fa8e94a5d25",
         intel: "9a5c61bb7328fbc007856d23e0841aee91a6fc5f24bfb1dfe60b7fde424b4d2e"

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
