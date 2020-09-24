cask "lando" do
  version "3.0.12"
  sha256 "64a383916f9335eb76fb7ce95ebafb93f6549565e2e85fa1745f0a8478a92523"

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
