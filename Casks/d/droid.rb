cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.137.1"
  sha256 arm:   "e1b330b3e6c65831909f11d26a2da97adc1497e41e031bad8b2c67c737e0b8bb",
         intel: "3ce6807a15414a2e2d75ac2557540055bb8ae86b33194f54a450f1ed98f300c6"

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
