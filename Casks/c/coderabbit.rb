cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.7.3"
  sha256 arm:   "4ffea6b2add7f779f09effa753fdedd0b6fbe7bbbb5a52dbb25abd7e9d62d1af",
         intel: "e955546d49cab067ac50e87810deee311c38914f09d7aaa5c48ac941d7768423"

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
