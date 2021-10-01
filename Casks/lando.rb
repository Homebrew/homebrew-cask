cask "lando" do
  version "3.4.1"

  if Hardware::CPU.intel?
    sha256 "74e6f2552b0a6081352de32c66678243595f77a0e5760a81142e34ecf0cacc5c"

    url "https://github.com/lando/lando/releases/download/v#{version}/lando-x64-v#{version}.dmg",
        verified: "github.com/lando/lando/"
  else
    sha256 "f6351f7ec3f7943606da2cbf81103136872c42318a2879ba1eba4f271e063fc4"

    url "https://github.com/lando/lando/releases/download/v#{version}/lando-arm64-v#{version}.dmg",
        verified: "github.com/lando/lando/"
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
end
