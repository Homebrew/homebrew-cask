cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.84.0"
  sha256 arm:   "a3ce47db4aa7e3c585809c3c980c2c4535f2ffc9bea61be3d9e2cbc3a2125159",
         intel: "107b38c56287058e2360feb870021f51e9b0d13b12e953d7f9540dd19f69bbe9"

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
