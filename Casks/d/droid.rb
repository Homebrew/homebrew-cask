cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.48.0"
  sha256 arm:   "187cbb079064a27efddd4d0fb99c3ca40a8b5e84e55a7245da7693bdd472ac66",
         intel: "1b608e9c4250ff16c74178ed8b5f3e376433477ea03fa03abf9f086f46aca398"

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
