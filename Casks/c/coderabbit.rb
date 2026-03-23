cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.3.10"
  sha256 arm:   "af75c5059b8f41717d5e0082bbb621f7e9bc4aa661f7eab6add26fd861c8995d",
         intel: "f64979c570269ea5824acf68c3a189a0d6a4a4dd8bb7ff269b6d9cc9d7fed6e9"

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
