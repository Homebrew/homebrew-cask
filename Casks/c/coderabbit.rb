cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.8"
  sha256 arm:   "a8b1647ead1337752d04dd392a9532afc9b3b00a180348eb91e69a227b266b1f",
         intel: "e1b58e12bc5ce85379d3c9618845324b9932f25a3f67e1d0078906c287b9e4f2"

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
