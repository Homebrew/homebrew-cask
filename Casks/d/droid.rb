cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.97.0"
  sha256 arm:   "f3305de58ec5dc44dfa62ef2bb0236d4f962e3e3fc894ae0f7c7df3155b62d62",
         intel: "f336e71786b927cd8bc06f72ae2a6d012669bbd3dca416f31523301c6ead4916"

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
