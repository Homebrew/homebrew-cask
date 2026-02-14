cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.14"
  sha256 arm:   "3dca817886fd22ebdd21bec7da406e8af1aeb7136d035d63e09947f8e8f5fe84",
         intel: "291966273158cd5d518c8b35d8816a049b4541b652d4b17d9fc703259a7459a6"

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
