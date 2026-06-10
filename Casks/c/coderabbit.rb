cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.6.0"
  sha256 arm:   "84ec642b06574b65f210d2f1b2059caa2ff378d2a9cefef6d636a6ab0ff91e9e",
         intel: "e96af473402bab8514fed9a20656d9d94a3bb7d768bf592a96ec17e77ce27264"

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
