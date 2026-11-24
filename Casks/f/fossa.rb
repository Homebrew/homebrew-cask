cask "fossa" do
  arch arm: "arm64", intel: "amd64"

  version "3.21.0"
  sha256 arm:   "2d7872aa9075fc4bed90a382132e97fa9c7f58ad8cb638a9245fe3575232d675",
         intel: "1c7ec89a1a980bfc4f23b192edea33567aa6e934ab71909d5dae44a615e79c2a"

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
