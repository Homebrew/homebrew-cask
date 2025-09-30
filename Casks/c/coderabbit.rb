cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.3"
  sha256 arm:   "d862c6eebdf548d641c24f504b528973b1832e235de4c86cb5c0b4a7ceead3db",
         intel: "595ba747bc2cc4e941a20dbb77330001106981cb956eca52d4e4f36a38427723"

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
