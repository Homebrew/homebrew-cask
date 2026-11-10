cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.7.1"
  sha256 arm:   "761730017d94d73cc040b97ea48b0c1d8ebda494c663b5fe89ca29a1168e7bd4",
         intel: "f548b33676ab67f45afbfd24783920e62db8f52eeaaa240b96e247e95b607424"

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
