cask "lando" do
  arch arm: "arm64", intel: "x64"

  version "3.20.1"
  sha256 arm:   "902dfb2124ab05da89dd4ba6be3b1701c6c1e96a1c3d6e0d410422ef8a39cee7",
         intel: "de58d1d4e6ed4e2ff0b5db95ad4a4c76cec9f99f20cf57f4d308d0e0143c719d"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-#{arch}-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  name "Lando"
  desc "Local development environment and DevOps tool built on Docker"
  homepage "https://lando.dev/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on cask: "docker"

  pkg "LandoInstaller.pkg",
      choices: [
        {
          "choiceIdentifier" => "choiceDocker",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "choiceLando",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  uninstall pkgutil: "dev.lando.pkg.lando"

  zap trash: "~/.lando"
end
