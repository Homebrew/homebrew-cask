cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.4.0"
  sha256 arm:   "cb150f3ae5d570ff40300465ba6f80406e1f65da86ee9fd5c3dd1011b989d19a",
         intel: "64d5621e81f372bcf000388f7548905fab3a9f5883fe548755eacc2caf24c696"

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
