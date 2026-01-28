cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.56.3"
  sha256 arm:   "60629a47ab51eecee70f06452c891b1cd3bacc6002d32c1e63f61fa98e370314",
         intel: "98e96e5f77e06452c9f68107b1a90c8d517a5b229f4d676a9c8683f882fc42a3"

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
