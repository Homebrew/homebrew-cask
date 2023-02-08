cask "lando" do
  arch arm: "arm64", intel: "x64"

  version "3.11.0"
  sha256 arm:   "8709ec42863a16afecbf9afe3103e55176ae3e26b68199ff1096ca72c14b8cb9",
         intel: "c813fd1d30d901c0ed22c0c2c60a0d3e94670dbc420ae7c7c99eb32be1fe5cb7"

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

  # No zap stanza required
end
