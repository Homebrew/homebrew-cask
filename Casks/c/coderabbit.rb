cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.5.1"
  sha256 arm:   "cb71c59687ab9733bd85897a72c895ef872e94a1a6cfc0cfdf8d24945528fba2",
         intel: "7d1a1dcdcb1ffc08a2835be5f060b2f0cd884e687306492650c0a9e0849cc05c"

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
