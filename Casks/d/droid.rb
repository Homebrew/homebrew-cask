cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.159.0"
  sha256 arm:   "7e025d20ba6ee90a18e53ae540e51c4bdac2a7d20df19fd1fa9dbfd4dbe594ed",
         intel: "9880a81d0ef2ef4babd3385de1fcfa727fde07106885362ce3240fcade0e752f"

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
