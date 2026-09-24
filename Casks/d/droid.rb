cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.226.1"
  sha256 arm:   "a3093e62619c3ee6c1e50b240f7792c5da94701724a1944c330dfa68e8dc173a",
         intel: "279d3a0c535f2b2fb3c1303f476b92625e0ac7023b4d6c1230a02d8aaa1394af"

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
