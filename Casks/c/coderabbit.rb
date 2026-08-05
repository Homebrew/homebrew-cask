cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.7.2"
  sha256 arm:   "29944665428720e55aa26a452e8f637858607a76f4722cabb88296f6976ee5b7",
         intel: "1f54ea386e9f6ef5277101d54fa6f071af65f88a800a786c6f83976396aeb727"

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
