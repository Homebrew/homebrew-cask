cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.17.2"
  sha256 arm:   "7a56a31dadab4bb5d53e541362eccdfa2bf307e6d7832deb805c5ea78c5f0168",
         intel: "edaace5b4b8ffc4b5a05fd2047462f07e1788229c2076c4e074b070066fb0ee8"

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
