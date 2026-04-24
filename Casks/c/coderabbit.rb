cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "07bc82a1f153ff5ab4c81474034b0837bf33128dc3d676f11a7a48445ddb02b4",
         intel: "8fe34819da86e35295d0c85488fb099b6a77fb9dfef6aa909f57f9b435c45b87"

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
