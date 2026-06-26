cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.6.4"
  sha256 arm:   "4c6f96ac36d64beafa83dafece65179e1913c8432ef018ebe83fc6c08b681231",
         intel: "b7aa8d62ae4bcce8652138a0658b720ef511692e04aa2cab238b5df2a299b247"

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
