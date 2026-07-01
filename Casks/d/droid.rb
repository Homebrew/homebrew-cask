cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.162.1"
  sha256 arm:   "20b1cbf8d08b8e8a2016dc766b84bc25598300a2b48164b672384615d5d83a9c",
         intel: "c1839787fa0e6f7c89b172c0ee7fece909e56384b1de7d6e46ee2b22d44fa58e"

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
