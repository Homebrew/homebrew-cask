cask "lando" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "3.6.5"

  url "https://github.com/lando/lando/releases/download/v#{version}/lando-#{arch}-v#{version}.dmg",
      verified: "github.com/lando/lando/"
  if Hardware::CPU.intel?
    sha256 "31efde4bc474ab63f2eb418fc0891704f31f1f16f0a3023440aada06f5229221"
  else
    sha256 "4e1789b78690ea0b430ee73460c747b9c234554fc108a581e1802f02eec87af6"
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
