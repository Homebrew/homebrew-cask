cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.147.0"
  sha256 arm:   "b4d6aa7e5e98ffb31ae9fa420778fdd63edd2996b9b9889faa5248cbb72e3386",
         intel: "f2c02d8ecf5b0e331279afa59212a02692cb0a236791bcfca3c1df1a21a8bd36"

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
