cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.101.0"
  sha256 arm:   "71baf616a2a392206bb11beb84f33d602ba573ce89087c564c7d6e3f038cec01",
         intel: "241a32fe02b763d02abb9b61eb607ca1b8d7409d50a8d14aef1572cfe75380e8"

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
