cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.158.0"
  sha256 arm:   "d37a94f44ad4b115c5bdc56e5576a42f93d0ecec64b116a126440240b5e9373b",
         intel: "418e2232dd6f16c6f2a995af4f6ea5e1754f5f20bfa2327792d995c34c95dcbf"

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
