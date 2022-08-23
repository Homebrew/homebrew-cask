cask "lando" do
  arch arm: "arm64", intel: "x64"

  version "3.6.4"
  sha256 arm:   "1dfc9bf38f562f99227cb9430d1311ea885f278e338318afe10871a38aae5925",
         intel: "cc1fd722bd8588837ff9cc51ce809075e08a7c49e6b9f3c328377a8ce04d03ae"

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
