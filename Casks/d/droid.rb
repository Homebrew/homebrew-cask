cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.140.1"
  sha256 arm:   "c41934b646c66d862277e32ff969bcc5b95552274b2d7f895a8eee24df1c25ed",
         intel: "f183a63c00eb7933956a69763ebd3098750100dfa11db9a7dff5cfe7f390fc03"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
