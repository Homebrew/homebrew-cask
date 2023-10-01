cask "lando" do
  arch arm: "arm64", intel: "x64"

  version "3.20.2"
  sha256 arm:   "8798cd56e0c5191cd6b1bedd1b1b046439ea880e34bd24d6028edaf61d5f51cf",
         intel: "17ac5dd4d41d59a436067c8b173d2708c00e00187e8c9bf23e9cc9c53f9aaeca"

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
