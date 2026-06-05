cask "coderabbit" do
  arch arm: "arm64", intel: "x64"

  version "0.5.3"
  sha256 arm:   "6fc437f00b8f0133c285fc9c69dd89dafa6a1192e5ddadc6d694c1f75916c073",
         intel: "a43bfe34311342ba6a495298b264b9603c7af08e9f89d2cc9be6b855985fd579"

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
