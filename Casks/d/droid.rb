cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.79.0"
  sha256 arm:   "18def2825761aef73d4224817fce04aa0ef2ae0f590037f9e995e354306cc727",
         intel: "2d4bc64a74837970837fb31021af5d0dcbd06599b1f4e3ef7ad1be2f9ddd161c"

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
