cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.7"
  sha256 arm:   "6942981e7b690dfd207b951103d5f2459be5e4e29f65850b8f081ffa96510084",
         intel: "8fcfdf54989ebeeaff0819f2b29631e140fa3f021c56a3639ef9e33342d43f42"

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
