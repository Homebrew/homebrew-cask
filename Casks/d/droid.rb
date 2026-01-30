cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.57.1"
  sha256 arm:   "a14381d6230ae4776416812fd0b0c35a7d395e3d74b63b130c92b3016af69257",
         intel: "1f0b6af20b8ec69ad6321fabbf8af5523bfeaf866fbd599fcfa0c8074ee40c60"

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
