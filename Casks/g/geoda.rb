cask "geoda" do
  version "1.22.0.6"
  sha256 "1722be14d82fbf78fcdff2f895d9681a9532371e9197ce7dd4f6fe680873a1ef"

  url "https://github.com/GeoDaCenter/geoda/releases/download/v#{version}/GeoDa#{version}-Installer.dmg",
      verified: "github.com/GeoDaCenter/geoda/"
  name "GeoDa"
  desc "Spatial analysis, statistics, autocorrelation and regression"
  homepage "https://geodacenter.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "GeoDa.app"

  caveats do
    requires_rosetta
  end

  # No zap stanza required
end
