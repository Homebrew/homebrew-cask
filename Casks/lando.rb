cask "lando" do
  version "3.0.11"
  sha256 "af2f8399cc4bab599e04f21905ece6602d83fb2aa07bd85c237730bd5187e9f2"

  # github.com/lando/lando/ was verified as official when first introduced to the cask
  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg"
  appcast "https://github.com/lando/lando/releases.atom"
  name "Lando"
  homepage "https://docs.lando.dev/"

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

  uninstall pkgutil: "io.lando.pkg.lando"
end
