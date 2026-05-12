cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.4.5"
  sha256 arm:   "8221fe93f213d7b965d39898ea5be19c995e3b6ca879509aebb48e5318c4120d",
         intel: "586dbaa384b0970aacfac8b9a242038cda8206edd02da10642712fcaab2abfa3"

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
