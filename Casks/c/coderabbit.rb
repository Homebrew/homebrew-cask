cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.6.1"
  sha256 arm:   "1ef973e91f21bad6ac69dbbdda55ff41717f8617f6e0ccb772e0be825595b709",
         intel: "55930a9f1c616e04092e88bdd5dde7291262f13edc4886cea88c04677b83fb36"

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
