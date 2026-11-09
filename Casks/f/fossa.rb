cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.20.10"
  sha256 arm:   "bfa8eeba500248da463663d25450df2464e99a0c1814ab93384f443386a5df39",
         intel: "e76a463c58caa0e1f3d5818bb30e05b5c8d5628258d9114fed9934b78b86f54c"

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
