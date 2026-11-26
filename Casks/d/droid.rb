cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.21.1"
  sha256 arm:   "3b1390a50cb469185cc19f7156798188de70ca5ea356983baf0f56790633c41b",
         intel: "6581196b2ce9465f7f752c44d5e3e8b75da0808026996b8f2e205a9ce89c1789"

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
