cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.136.1"
  sha256 arm:   "cf7183996d6ac878ae02b341a5418f8262f6d0b9b866102a146ea8d031feaced",
         intel: "537f72f09702a4cd45ae804f9cb52ae18e27d19b1835771a6331980bafde91fb"

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
