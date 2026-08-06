cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.189.0"
  sha256 arm:   "2ddc9ba6b2ecfa106c0eea4101bd966e3b7a7521a4ea835df817edd50b7ccdca",
         intel: "ba9de442eda50622c5163f08cc9f4ae40812300d41f5af5c5ad659c6eac133aa"

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
