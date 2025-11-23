cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.4"
  sha256 arm:   "e83f0b87ebcbc47eaf2bd79b54c81a666ea201348edb755c75743fca27a85c4f",
         intel: "8afc606d3017e91023be5dbbe5c5a083c72bc029195799228e576d1211f392ac"

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
