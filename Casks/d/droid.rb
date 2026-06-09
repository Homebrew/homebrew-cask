cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.143.0"
  sha256 arm:   "20b8441bf2b9686b979035698cedb72a6acb6c0be523789f218d7120de45c856",
         intel: "9d27b561e4d38687b8f91e497dc012a9a30c14239c19dc268f8bf548bbb330a6"

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
