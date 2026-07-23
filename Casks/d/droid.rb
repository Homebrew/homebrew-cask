cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.178.0"
  sha256 arm:   "dd691cd0f4ff67e1fe320b8a47a5b784f64509bed5a9dddc3421680f5729837d",
         intel: "ba701064fb7680a299fdcb03bafb484f62ee00c2008434e190e5791e4b907f5c"

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
