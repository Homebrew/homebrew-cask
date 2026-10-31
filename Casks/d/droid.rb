cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.1.0"
  sha256 arm:   "28fc8c2b3389fa8ab724c5f0ee00f32fb5dabf8bd2e089719f274685a0f24429",
         intel: "4a8cdcdf04e1bb65e565b0fbd498e5c3741e8b420c56cbbd84c8bac2f14dee75"

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
