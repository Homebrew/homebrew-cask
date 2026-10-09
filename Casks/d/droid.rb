cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.237.0"
  sha256 arm:   "6ea19209d686aa98ceab127be9879a544e0190561ab7ab00dde049e2082e6101",
         intel: "cbc0ed85392b8c6ee78463581d2035935ece1bdbdbe74ac75b2281e0e8a46454"

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
