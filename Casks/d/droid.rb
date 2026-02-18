cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.17"
  sha256 arm:   "42a65485024ecc4f8d999501e64d907e5e5189e7aa0483c32271ce6e787ce87d",
         intel: "5e9e33d7830ecb98b44dd948e5ca9505662adc9cc8e739b432cbbc9e6270f58a"

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
