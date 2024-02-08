cask "docker-toolbox" do
  version "19.03.1"
  sha256 "6ad3fe973d5c8198c24bc270b3bb89c6ad48db28d0d6232710990888bda369f6"

  url "https://github.com/docker/toolbox/releases/download/v#{version}/DockerToolbox-#{version}.pkg",
      verified: "github.com/docker/toolbox/"
  name "Docker Toolbox"
  desc "Install Docker, Docker Machine, Docker Compose, and Kitematic"
  homepage "https://www.docker.com/products/docker-toolbox"

  deprecate! date: "2023-12-17", because: :discontinued

  depends_on cask: "virtualbox"

  pkg "DockerToolbox-#{version}.pkg",
      choices: [
        {
          "choiceIdentifier" => "choiceDockerComposeCLI",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choiceDockerQuickstartTerminalAPP",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choiceKitematicAPP",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
        {
          "choiceIdentifier" => "choiceVBox",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 0,
        },
        {
          "choiceIdentifier" => "choiceBoot2DockerISO",
          "choiceAttribute"  => "selected",
          "attributeSetting" => 1,
        },
      ]

  postflight do
    set_ownership "~/.docker"
  end

  uninstall pkgutil: [
    "io.boot2dockeriso.pkg.boot2dockeriso",
    "io.docker.pkg.docker",
    "io.docker.pkg.dockercompose",
    "io.docker.pkg.dockermachine",
    "io.docker.pkg.dockerquickstartterminalapp",
    "io.docker.pkg.kitematicapp",
  ]

  zap trash: "~/.docker"
end
