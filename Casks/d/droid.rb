cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.10.1"
  sha256 arm:   "f058ae7dd5e6325b18ca8ae45a11fcaaa96f77b383874f83b0d9a28057437ad4",
         intel: "4a5f8ef42f90bfbb71d3e8d893491a9296897680838561ee5666f0fa234a7497"

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
