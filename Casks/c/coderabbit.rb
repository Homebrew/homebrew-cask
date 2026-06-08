cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.5.4"
  sha256 arm:   "143983fa1ce26ca49ff0413e92fd2e68ffdecbfddca1e98a1a55b17210e185a0",
         intel: "43c36d20bc306869e27421fc7f4532bd0dbdd4ed9fa357d85e3545da5bb8e522"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-darwin-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on :macos

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
