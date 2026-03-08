cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.70.0"
  sha256 arm:   "fea3e0523eac8559b26f08cc9d2fc6880551ffd8de10652d552e34b078a6efb1",
         intel: "91e3713e791164218cdd0642de633fb41b30d1085f879ff5975c7eb11d8f598d"

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
