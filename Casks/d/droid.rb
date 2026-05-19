cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.129.0"
  sha256 arm:   "9f22d9b5f9a7de683e78a817177a251488e21dbb12b6a492a1ed5df4b0e7eca3",
         intel: "c158886bc9840a6746732acf51ef010bac1b9670bca7693ede83c74c277566c0"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
