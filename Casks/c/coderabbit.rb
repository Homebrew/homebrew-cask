cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.6.5"
  sha256 arm:   "57530d557ca6f75f48b6c264a10d8169b52334be991c485be2402954bdb6cecc",
         intel: "ff2de1a88fed72b4bea98c806a81c67e9abfd1d0cc62445dc35f4a945f6e56ea"

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
