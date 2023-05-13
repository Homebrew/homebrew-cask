cask "lando" do
  arch arm: "arm64", intel: "x64"

  version "3.17.0"
  sha256 arm:   "12ab2c6df437b7cffdca132bf87f4cab533f55075e2492d29c4b7e7d2a03f762",
         intel: "fd45f14122f3845c1a1f7728e5a511cb8e5bd6a2448f03258ae393f36116f26e"

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
