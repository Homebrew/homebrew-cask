cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.194.1"
  sha256 arm:   "956c52f93e8a5cfb5c0dcc2410fd81c41ec0e8b6ec11520a70e986aab6944161",
         intel: "083fd95255de685a73677c517c348bd1c2ad6fbfff2c7ccac5a3e60ad060bf60"

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
