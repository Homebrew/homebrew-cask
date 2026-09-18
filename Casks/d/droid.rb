cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.222.0"
  sha256 arm:   "3599d481621b97b37294f78f65afb0d9a007db31ae9f5ea123b924cb049290ee",
         intel: "08648ee57d9cb02a5a15d4f01dde960fa1743682c2a258d3b6cfa038f5b31d55"

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
