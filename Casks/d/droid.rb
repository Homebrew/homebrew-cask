cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.153.0"
  sha256 arm:   "b842964fd2d4976b117c5a789adf5af75eed4ac315c72bbc74c3d2cb9a1aa673",
         intel: "9138393a3aa243fc2213d1a685d505fe5ee4e7172a856b922b9d6e23ebb1e79f"

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
