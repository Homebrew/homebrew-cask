cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.140.0"
  sha256 arm:   "51bda966c65195772f1a0b888e451a0664caa7f87e0a52574cef47b6c812ac52",
         intel: "270eb7010cf38d9e8dfdc65e6d121264cecd060a73fa5c92d24890796897c700"

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
