cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.108.0"
  sha256 arm:   "909edc40504484355db95268067c66733d9cf622a3dccf9e65d6e09f0b410963",
         intel: "8d242477df268957c7fe3a07cf12e7c02795047c981f08b3078d31fc1a86b492"

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
