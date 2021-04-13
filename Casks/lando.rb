cask "lando" do
  version "3.1.0"
  sha256 "bcd2f0a5fc79df24e1d90d979d457a753ccabb1ea9b48e204e5fa8fa0fcd5224"

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
