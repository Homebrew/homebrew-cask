cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.208.0"
  sha256 arm:   "a17b237e93b754610b572e4892aa268f57f804126ea9a46f6325c0de5f31c38b",
         intel: "9819788990f119a2a63d19e9daa4f2d8480539be32a29e72f43746ccea4bf446"

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
