cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.172.0"
  sha256 arm:   "fe094e6542f27cbbc72e6bc0e907924d58eccbaa1aec8d84654dd86160cf520e",
         intel: "021adbf1e00a4d3b6208cbd0181747a13f395a23d687936f71e458f7a83a89d2"

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
