cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.176.0"
  sha256 arm:   "356423c4d1dbfbabf9f721cfffe777d51369a287e481d209579e0353048bd5c6",
         intel: "aeac6f554680fd9a63e6c1360a4f50789a3781ef34344f766c66eaaa8acc5e30"

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
