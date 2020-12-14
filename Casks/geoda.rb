cask "geoda" do
  version "1.18.0.0"
  sha256 "035dc54b13098f2fb27462a4ddfe74eb7f73dda433e606b3d9b1d8e2a88db149"

  url "https://github.com/GeoDaCenter/geoda/releases/download/v#{version.major_minor}/GeoDa#{version}-Installer.dmg",
      verified: "https://github.com/GeoDaCenter/geoda/"
  appcast "https://github.com/GeoDaCenter/geoda/releases.atom"
  name "GeoDa"
  desc "Spatial analysis, statistics, autocorrelation and regression"
  homepage "https://geodacenter.github.io/"

  app "GeoDa.app"
end
