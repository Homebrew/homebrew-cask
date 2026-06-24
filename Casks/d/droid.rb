cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.157.1"
  sha256 arm:   "ba224d6477874eea0477b0725a656cfb4f91208f1f179e8ea662bcad4c4fc8f8",
         intel: "87410a592d0a65f98741bb01216be24e6ef319f43022249d2a2b37627ca294e9"

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
