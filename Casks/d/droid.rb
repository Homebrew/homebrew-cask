cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.245.1"
  sha256 arm:   "1a1899128542a442603443f213807ba15ca28221a43e24ffbb92120c3e065205",
         intel: "5ac8734e24aabd0f7e0f990053351374ca009063a907adf4480119e353620a0a"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true
  depends_on formula: "ripgrep"
  depends_on :macos

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
