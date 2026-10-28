cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.8"
  sha256 arm:   "79fe6cead46ad1d49d59204601983a4f86174454217e2d5da26c8155c4c829d4",
         intel: "de9103d15608945cb18e18e43aa3e3c896e0d80c7891b9ada7df7c0e33416f40"

  url "https://github.com/fossas/fossa-cli/releases/download/v#{version}/fossa_#{version}_darwin_#{arch}.zip"
  name "FOSSA"
  desc "Zero-configuration polyglot dependency analysis tool"
  homepage "https://fossa.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  binary "fossa"

  zap :not_required
end
