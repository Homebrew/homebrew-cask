cask "lando" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.6.0"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-#{arch}-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  if Hardware::CPU.intel?
    sha256 "03b0a4a3c76c91141dd1fcaee2d679d6a5e1030fcb6d53f36cf941c57ee35677"
  else
    sha256 "e9e58bd71e73f2ae26aa791492f29581b69f58aaa07d219b11a06e2010c972cb"
  end

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
