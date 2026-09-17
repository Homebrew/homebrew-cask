cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.221.0"
  sha256 arm:   "51a00e79a7b30937a545fb85bcdc0298baeb0bc3e77365b05536c6c9aaac8572",
         intel: "8e6990f15cd74cfe4ab9add14f78774a80a0a255cc7756da9531c25753b4468b"

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
