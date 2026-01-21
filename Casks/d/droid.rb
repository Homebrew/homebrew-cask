cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.54.0"
  sha256 arm:   "b9812cbce675668c261b464996a58872215d43cf732d48e5d38a1907e1ba298a",
         intel: "b95e4714fc6f26b5b5f26b481ab3622d2cbd700eae6cd2ded0786a53d7d726ac"

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
