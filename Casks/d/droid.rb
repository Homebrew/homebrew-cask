cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.16.0"
  sha256 arm:   "297c47bf8f8e47fdb36462938fd6ba345398ad83081546759f4acf0e59bbea03",
         intel: "0e78a4a794ed17467b55710246dd8688f3f019404f94aecb58eca2579446089e"

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
