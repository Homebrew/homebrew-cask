cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.69.0"
  sha256 arm:   "9a68b512a691992dca1c179300e09ca69cfa54da008f1146d56f59f5a5c220c3",
         intel: "f7848da61f1128647a17adb378a9dc7ac440f641aaa3018ef30e3bf1c397877b"

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
