cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.167.1"
  sha256 arm:   "f510272ed37f1870c9abe23260e9213ba2da2b15ac3887926cf1ee48415b65d9",
         intel: "a9facd87a53af1e10d4a3cedc184b8cff6ba2943916ad38ce2e6bb75df94c7a8"

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
