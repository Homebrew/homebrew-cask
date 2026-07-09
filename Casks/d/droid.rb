cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.168.0"
  sha256 arm:   "eac25f43be2907f969f3e8f3f214124f643d3e6bd0638c0bbd346f797e6aaffe",
         intel: "c539e4459d540f5ce1287d0cb3ed1fb7a1396c37319be8e91875777ed2e272b6"

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
