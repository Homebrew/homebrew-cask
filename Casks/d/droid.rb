cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.218.0"
  sha256 arm:   "0201f4d0530a45ea43dfbfeede6a5b22960100374d0b783f74bff8246d5f09d3",
         intel: "d4eacf8f28dc211649e16676337d4b41e9a9fe6b88c9c197d0f332ae474218d4"

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
