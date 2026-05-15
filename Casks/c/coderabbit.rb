cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.5.0"
  sha256 arm:   "5c26edb0d7c4e2cb58988f43b6ff33adf5242f8020e661dbc0a26065b9f36fe2",
         intel: "70ed200d90e58aca3a4775229c8cd60a37f77aaabea226df39788331456a2bf1"

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
