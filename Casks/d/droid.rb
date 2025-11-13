cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.25.1"
  sha256 arm:   "b77c4cd2a76cd11b9789f4b6ee1311012744db365e48c15271f726824b82fbc3",
         intel: "3467052713664c0d1e4e9de1cd839a309118961d2937a76f6ae16dead3278b0a"

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
