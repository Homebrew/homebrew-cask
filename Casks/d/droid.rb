cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.56.0"
  sha256 arm:   "fc857e42191d1081d388d397d8d6b554170886d41d28eaa0e1e70b24aa39e442",
         intel: "63be2508d33e3230167d491857bf1b575c44b34c64dbfdb1c1e3f6672bf7b2e8"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
