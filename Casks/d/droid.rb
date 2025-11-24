cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.13"
  sha256 arm:   "b89a92addf8add2ff45d245c7045c4aef7f0217d3060ada357a198e5a8ab16f5",
         intel: "3a66f3ab6c26270b328c64bf838d7583b77cc5f9681d9be2e40df2b5bb33d97b"

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

  # No zap stanza required
end
