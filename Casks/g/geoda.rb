cask "geoda" do
  arch arm: "arm64", intel: "x86_64"

  version "1.22.0.8"
  sha256 arm:   "0026f101763e5eed1c62a326e04c732d9796e5d6c7e09404f98dace098594da8",
         intel: "7273994f74e838b3cf08513e714279402f0fd0b9dd6305027ecf26c30c4f9789"

  url "https://github.com/GeoDaCenter/geoda/releases/download/v#{version}/GeoDa#{version}-#{arch}-Installer.dmg",
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

  # No zap stanza required
end
