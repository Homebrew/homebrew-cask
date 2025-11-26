cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.27.2"
  sha256 arm:   "9cfdc7e496061b63fd91b9cea9b9be0477a9a32ab09f67a525c1ef0af53a1d64",
         intel: "ac7674b59fbe0b827562ef45d854a1f3e17d1010b246faa87a265e655f2ca69e"

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
