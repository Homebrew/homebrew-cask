cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.6.2"
  sha256 arm:   "9b85b249570e7569451683858b195308113e8d0e528fd093be74c2bf972d2cda",
         intel: "bf3b45c456df8a0e76f3a7b96d971c3e86bc52c3d718c10d23a07306910785d5"

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
