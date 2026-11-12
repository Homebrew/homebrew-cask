cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.9.0"
  sha256 arm:   "b62ce8de0ed7ffaada1abb2a017fe182021003694e85fe7f3b1136ad43628a5d",
         intel: "533eeaec54246c377fdfba2b35ccbe1e3216dc853b6e242dbb64a40adc8867af"

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
