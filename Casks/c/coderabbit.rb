cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.6.3"
  sha256 arm:   "123479715795e6d400f2e5b9b0187ad307ab33089d1e1a65b4d63253215b0889",
         intel: "66e643ef10e0ca29e03d4bc7e76507e678810a45c0412312f9c7a2d21a11105d"

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
