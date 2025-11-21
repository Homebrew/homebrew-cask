cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.26.10"
  sha256 arm:   "4bffa9ebb254d8df2b5a362ab5bf4509c68a14c191f27e67ebf36bc2a863d5e9",
         intel: "c2dd0ed784640fefcecd49ddc9f10bb8f53d78273411f94305c126128cd08062"

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
