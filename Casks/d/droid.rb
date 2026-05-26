cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.133.0"
  sha256 arm:   "455303edf58d8a6c58c3b90628ce18c9b2d1900596cac6c1377a14729d575cef",
         intel: "da0306d003ce4c42778e8354eb1669d1eccbae9f2ad0298d4de921672cbd2f16"

  url "https://downloads.factory.ai/factory-cli/releases/#{version}/darwin/#{arch}/droid"
  name "Droid"
  desc "AI-powered software engineering agent by Factory"
  homepage "https://docs.factory.ai/cli/getting-started/overview"

  livecheck do
    url "https://downloads.factory.ai/factory-cli/LATEST"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  depends_on :macos
  depends_on formula: "ripgrep"

  binary "droid"

  zap trash: [
    "~/.factory",
    "~/.local/bin/droid",
  ]
end
