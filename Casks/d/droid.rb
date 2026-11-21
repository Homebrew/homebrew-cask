cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.17.1"
  sha256 arm:   "3a2c33091be70c79ee549aba5f50a3bac38ec8a71c285e1eaa928239130d0615",
         intel: "53abb76ead2dccdf3a3b700846281470b0e3e5e9239a12d019c66e52606b7971"

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
