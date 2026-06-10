cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.144.0"
  sha256 arm:   "103a47aafb96182e35fa0cb41acb78c4f1a734403b2f0b26d3194d2ed1072009",
         intel: "6c0c85b74204b23ce530f237427aa19c7f43484f8ea162fa5cbb8057d501a2d1"

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
