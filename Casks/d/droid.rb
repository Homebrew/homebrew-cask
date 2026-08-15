cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.197.0"
  sha256 arm:   "353b7478f680ee04c8e672b2798cd9763ba642cc0eed8b3e8094b3c23903e350",
         intel: "df294c4a435adf2f361503540c1816b22104161844c41632ccf19ffa2265e1aa"

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
