cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.225.0"
  sha256 arm:   "ea63a1844fbf6be20cf61bd5ca7ad02443a4a72b423d1a5928052b1800f13824",
         intel: "aaec21c640434406507347426157c7f3597b77fb7a924f0a09784fffbbe07c07"

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
