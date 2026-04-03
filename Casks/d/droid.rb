cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.93.0"
  sha256 arm:   "31af63d23bfe752ca64003a98cc3a82a1b4bef17efaeafb28397954fa4a5eac3",
         intel: "9acffea3558cbcce5d1b4e10f3f078bb9a36999310db67933067046bf167223d"

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
