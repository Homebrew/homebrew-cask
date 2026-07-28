cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.7.1"
  sha256 arm:   "9136c96b6fb8998ba119df9759b4da2987246108260c5a1d9ee86bdadf694660",
         intel: "5ab06a6692a29c8654cf3659d8d943cc2b7f737c9c31eeebb3186389878b27bf"

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
