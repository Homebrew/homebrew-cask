cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.9"
  sha256 arm:   "98f24f144e4b76a38e918fc15ca0ab22fdf43955ee8e4d40461b8791201220e9",
         intel: "ac2e491ac8cd5de95f2211d8946e80e7c56a9e5c841fc722a65bf4750754d479"

  url "https://cli.coderabbit.ai/releases/#{version}/coderabbit-darwin-#{arch}.zip"
  name "CodeRabbit"
  desc "AI code review CLI"
  homepage "https://www.coderabbit.ai/cli"

  livecheck do
    url "https://cli.coderabbit.ai/releases/latest/VERSION"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "coderabbit"

  zap trash: "~/.coderabbit"
end
