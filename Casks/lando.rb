cask "lando" do
  version "3.3.1"

  if Hardware::CPU.intel?
    sha256 "d9e672d8a5db6d62100ee0b80f9a7a010b426ea7bbe0052ac500c5ab285d0cd3"

    url "https://github.com/lando/lando/releases/download/v#{version}/lando-x64-v#{version}.dmg",
        verified: "github.com/lando/lando/"
  else
    sha256 "9c300e52f373eb6af380039061c36bcf25c4fff6f313e94526347cbec19ad13f"

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
