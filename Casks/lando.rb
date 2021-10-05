cask "lando" do
  version "3.4.2"

  if Hardware::CPU.intel?
    sha256 "2593ebb137733f3069a6db873f440f84860e0d00fa0eb99293bda0c8f17472fe"

    url "https://github.com/lando/lando/releases/download/v#{version}/lando-x64-v#{version}.dmg",
        verified: "github.com/lando/lando/"
  else
    sha256 "a5d9837a5509ce60a45cc4bdf6aa8bcdd5df7ceb0e972f1f547ab45eb9f69dee"

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
