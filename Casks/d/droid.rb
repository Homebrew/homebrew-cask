cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.213.0"
  sha256 arm:   "c7e3282165c2acb8180471ecae2b24ba1fe2592a6d54b291450ef217f65c6e7c",
         intel: "d2194875678ad09096696af6c170be564b92883b171efe3c081169fddee01720"

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
