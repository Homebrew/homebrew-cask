cask "jasper" do
  arch arm: "arm64", intel: "x64"

  version "1.1.1"
  sha256 arm:   "860a6d48cfc4542a0060746e10d2bfe06a3da66a0a3aeef028f02454afb3cd66",
         intel: "8c30e53b39ab87c94eff5c76c52b7403125efeb33b76e0cc6250c134aaf55fe3"

  url "https://github.com/jasperapp/jasper/releases/download/v#{version}/jasper_v#{version}_mac_#{arch}.zip",
      verified: "github.com/jasperapp/jasper/"
  name "Jasper"
  desc "Issue reader for GitHub"
  homepage "https://jasperapp.io/"

  app "Jasper.app"

  zap trash: [
    "~/Library/Application Support/jasper",
    "~/Library/Containers/io.jasperapp",
  ]
end
