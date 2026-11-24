cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "1.19.0"
  sha256 arm:   "82e03f60edf7dc09e33bf9b3ff0e6a2347974604be4e6e5fa8fbaa2c436e3723",
         intel: "440856b64ff0c89123c26b50971365d0a79572a04aff902a57a0ab98274cd7c3"

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
