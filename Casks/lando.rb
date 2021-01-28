cask "lando" do
  version "3.0.23"
  sha256 "d4a317ad725e7f3b72f91235ea7e0d43857489ee3db23132d14675aa1715974b"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  name "Lando"
  homepage "https://docs.lando.dev/"

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

  uninstall pkgutil: "io.lando.pkg.lando"
end
