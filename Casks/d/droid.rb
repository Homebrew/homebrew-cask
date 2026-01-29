cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.0"
  sha256 arm:   "ec0853d2b0c4d44ecb6da49bcf9eef0247586253afce093656c7275ac6943f25",
         intel: "6530cd4065f255f5f9a0115fed7e4e231b24384cb6d237b4db95a0bb1d1f8ff9"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
