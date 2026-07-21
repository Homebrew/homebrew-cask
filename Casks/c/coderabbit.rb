cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.7.0"
  sha256 arm:   "5539910fd64745351b441d3309a767e16b49a61916cc59783d09b748e2a4833e",
         intel: "aa0a47ff01aa849d61eed27464f4ee23601f6add50c01450c1689a5802970c76"

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
