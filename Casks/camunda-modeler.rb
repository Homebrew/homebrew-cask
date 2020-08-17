cask "camunda-modeler" do
  version "4.2.0"
  sha256 "06cf59632cd3bee9a7856b173166d18b2ecdf288a3ed93ade0299d5a675374d2"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast "https://camunda.com/download/modeler/"
  name "Camunda Modeler"
  homepage "https://camunda.org/"

  app "Camunda Modeler.app"
end
