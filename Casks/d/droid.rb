cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.243.0"
  sha256 arm:   "a9d5d1652450aea967fd986285c9aff8dc043e836f47bc9f19161d6848b92a85",
         intel: "a232cb180aecf89dae8d228eadddc81aaa0c6c76dfdacb7a89d6fb5a51c77d42"

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
