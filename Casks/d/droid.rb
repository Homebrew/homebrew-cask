cask "droid" do
  arch arm: "arm64", intel: "x64"

  version "0.94.1"
  sha256 arm:   "01ede2d4b596c9dd06e2ac20f848bab761d1a357670745d7708dc20cac75938b",
         intel: "86dfd1ed3dc17757eb4408fabadc1b0c3793f98815fd55a3c9c4934dd082b4df"

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
