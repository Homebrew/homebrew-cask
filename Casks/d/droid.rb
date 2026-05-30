cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.137.0"
  sha256 arm:   "5f4024b57f9e5d6db7d0d69cf1838e350b13d3d7f0e9aea7ec289eee1aeb358a",
         intel: "b9252fe461e5d8982ecc5d6b46fa3ac66a85c72e80fef178a65578b9776ab8e4"

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
