cask "lando" do
  arch arm: "arm64", intel: "x64"

  version "3.20.5"
  sha256 arm:   "202e3a0fd6203694d6057ba0d4797e5fff4513a9e97eb2583dd2b0eeea9525d2",
         intel: "b13a0174bb530e570f6490e7ae6df1977320b97261120074ed7cfa58c585f302"

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
