cask "camunda-modeler" do
  version "4.3.0"
  sha256 "9060ab2b2986865df12f10eaf9fa1e922cb1b4648070a96ff0a37e2d835c08fa"

  url "https://camunda.org/release/camunda-modeler/#{version}/camunda-modeler-#{version}-mac.zip"
  appcast "https://camunda.com/download/modeler/"
  name "Camunda Modeler"
  homepage "https://camunda.org/"

  app "Camunda Modeler.app"
end
