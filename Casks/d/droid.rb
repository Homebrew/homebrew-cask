cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.139.0"
  sha256 arm:   "911627e95265d04f4975a8c4e41d9a9a17b33c9a4ae0b3bda7cd6782d6d84de0",
         intel: "9a3574d24e5c934c6fcc7dc0965f8ccca02daf5e70c575ba4f5ac9eaba4fda55"

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
