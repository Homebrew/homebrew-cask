cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.191.1"
  sha256 arm:   "2bf13e324ee06a6cf043316383455f342c2868ddf4bfb7769eed6e03e3c9e72e",
         intel: "134b00322a542cc442241721af8a68bad92ccfe63dde9bbe02387181d1777f06"

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
